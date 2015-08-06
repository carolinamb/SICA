package personal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PuestoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        List<Puesto> puestoList=Puesto.findAllByEstatus(true,params)
        def total=Puesto.countByEstatus(true)
        respond puestoList, model: [puestoInstanceCount: total]
    }

    def show(Puesto puestoInstance) {
        respond puestoInstance
    }

    def create() {
        respond new Puesto(params)
    }

    @Transactional
    def save(Puesto puestoInstance) {
        if (puestoInstance == null) {
            notFound()
            return
        }

        if (puestoInstance.hasErrors()) {
            respond puestoInstance.errors, view: 'create'
            return
        }

        puestoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'puesto.label', default: 'Puesto'), puestoInstance.id])
                redirect puestoInstance
            }
            '*' { respond puestoInstance, [status: CREATED] }
        }
    }

    def edit(Puesto puestoInstance) {
        respond puestoInstance
    }

    @Transactional
    def update(Puesto puestoInstance) {
        if (puestoInstance == null) {
            notFound()
            return
        }

        if (puestoInstance.hasErrors()) {
            respond puestoInstance.errors, view: 'edit'
            return
        }

        puestoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Puesto.label', default: 'Puesto'), puestoInstance.id])
                redirect puestoInstance
            }
            '*' { respond puestoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Puesto puestoInstance) {

        if (puestoInstance == null) {
            notFound()
            return
        }

        puestoInstance.setEstatus(false)
        if (puestoInstance.save(flush: true))
            println "Se eliminó logicamente"

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Puesto.label', default: 'Puesto'), puestoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'puesto.label', default: 'Puesto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
