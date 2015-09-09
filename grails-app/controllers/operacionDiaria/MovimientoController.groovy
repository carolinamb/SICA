package operacionDiaria

import dto.reportes.MovimientoDTO
import dto.reportes.ReporteMovimientoDTO
import personal.Policia

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MovimientoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        List<Movimiento> movimientoList=Movimiento.findAllByEstatus(true,params)
        def total=Movimiento.countByEstatus(true)
        respond movimientoList, model: [movimientoInstance: total]
    }

    def show(Movimiento movimientoInstance) {
        respond movimientoInstance
    }

    def create() {
        respond new Movimiento(params)
    }

    @Transactional
    def save(Movimiento movimientoInstance) {
        if (movimientoInstance == null) {
            notFound()
            return
        }

        if (movimientoInstance.hasErrors()) {
            respond movimientoInstance.errors, view:'create'
            return
        }

        if (!movimientoInstance?.fechaEntrega)
            movimientoInstance.setFechaEntrega(new Date())
        else
            movimientoInstance.setFechaRecepcion(new Date())

        movimientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), movimientoInstance.id])
                redirect movimientoInstance
            }
            '*' { respond movimientoInstance, [status: CREATED] }
        }
    }

    def edit(Movimiento movimientoInstance) {
        respond movimientoInstance
    }

    @Transactional
    def update(Movimiento movimientoInstance) {
        if (movimientoInstance == null) {
            notFound()
            return
        }

        if (movimientoInstance.hasErrors()) {
            respond movimientoInstance.errors, view:'edit'
            return
        }

        movimientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Movimiento.label', default: 'Movimiento'), movimientoInstance.id])
                redirect movimientoInstance
            }
            '*'{ respond movimientoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Movimiento movimientoInstance) {

        if (movimientoInstance == null) {
            notFound()
            return
        }

        movimientoInstance.setEstatus(falce)
        if (movimientoInstance.save(flush: true))
        println "Se eliminó logicamente"

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Movimiento.label', default: 'Movimiento'), movimientoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def buscarPoliciaClave(){
        Policia policiaInstance
        def movimiento
        Boolean entrega=false
        try {
            policiaInstance=Policia.findByClave(params.clave)
            movimiento=Movimiento.findByPoliciaAndVersion(policiaInstance,0)
            if (!movimiento){
                entrega=true
                render template: 'informacionGeneral', model: [policiaInstance:policiaInstance,entrega:entrega]
            }
            else
                render template: 'informacionGeneral', model: [policiaInstance:policiaInstance,movimientoInstance:movimiento]
        }catch (Exception e){
            e.printStackTrace()
        }
    }

    def reporte(){
        params._file='movimientos'
        params._format='PDF'
        params.SUBREPORT_DIR_MOVIMIENTOS = "${servletContext.getRealPath('/reports')}/subReportMovimientos.jasper"
        String signoComa=""
        String valorNullo=""
        ReporteMovimientoDTO reporte=new ReporteMovimientoDTO()
        def movimientoDTOList=[]
        List<Movimiento> movimientosList=Movimiento.list()
        movimientosList.each {movimiento->
            String armasOcupadas=""
            MovimientoDTO movimientoDTO=new MovimientoDTO()
            movimientoDTO.setPolicia(movimiento?.policia.clave)
            movimientoDTO.setRegion(movimiento?.policia.region.descripcion)
            if (movimiento?.armasOcupadas.size()>1)
                signoComa=", "
            movimiento?.armasOcupadas.each {arma->
                armasOcupadas=armasOcupadas+arma.toString()+signoComa
            }
            movimientoDTO.setArmas(armasOcupadas)
            movimientoDTO.setTurno(movimiento?.policia.turno.descripcion)
            if (movimiento?.fechaRecepcion){ movimientoDTO.setFechaRecepcion(movimiento?.fechaRecepcion.format("dd-MM-yyyy HH:mm:ss.S").toString())
            }else{movimientoDTO.setFechaRecepcion("Arma No Entregada")}

            movimientoDTO.setFechaEntrega(movimiento?.fechaEntrega.format("dd-MM-yyyy HH:mm:ss.S").toString())
            movimientoDTOList.add(movimientoDTO)
        }
        reporte.setMovimientos(movimientoDTOList)
        List listaMov = new ArrayList()
        listaMov.add(reporte)
        chain(controller: "jasper", action: "index", model: [data:listaMov],params:params)
    }
}
