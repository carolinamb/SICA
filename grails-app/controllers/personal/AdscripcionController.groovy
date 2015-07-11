package personal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdscripcionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        List<Adscripcion> adscripcionList=Adscripcion.findAllByStatus(true,params)
        def total=Adscripcion.countByEstatus(true)
        respond adscripcion, model: [adscripcionInstanceCount: total]
    }

    def show(Adscripcion adscripcionInstance) {
        respond adscripcionInstance
    }

    def create() {
        respond new Adscripcion(params)
    }

    @Transactional
    def save(Adscripcion adscripcionInstance) {
        if (adscripcionInstance == null) {
            notFound()
            return
        }

        if (adscripcionInstance.hasErrors()) {
            respond adscripcionInstance.errors, view:'create'
            return
        }

        adscripcionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'adscripcion.label', default: 'Adscripcion'), adscripcionInstance.id])
                redirect adscripcionInstance
            }
            '*' { respond adscripcionInstance, [status: CREATED] }
        }
    }

    def edit(Adscripcion adscripcionInstance) {
        respond adscripcionInstance
    }

    @Transactional
    def update(Adscripcion adscripcionInstance) {
        if (adscripcionInstance == null) {
            notFound()
            return
        }

        if (adscripcionInstance.hasErrors()) {
            respond adscripcionInstance.errors, view:'edit'
            return
        }

        adscripcionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Adscripcion.label', default: 'Adscripcion'), adscripcionInstance.id])
                redirect adscripcionInstance
            }
            '*'{ respond adscripcionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Adscripcion adscripcionInstance) {

        if (adscripcionInstance == null) {
            notFound()
            return
        }

        adscripcionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Adscripcion.label', default: 'Adscripcion'), adscripcionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'adscripcion.label', default: 'Adscripcion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
