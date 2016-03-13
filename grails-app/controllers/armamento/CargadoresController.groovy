package armamento


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CargadoresController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cargadores.list(params), model: [cargadoresInstanceCount: Cargadores.count()]
    }

    def show(Cargadores cargadoresInstance) {
        respond cargadoresInstance
    }

    def create() {
        respond new Cargadores(params)
    }

    @Transactional
    def save(Cargadores cargadoresInstance) {
        if (cargadoresInstance == null) {
            notFound()
            return
        }

        if (cargadoresInstance.hasErrors()) {
            respond cargadoresInstance.errors, view: 'create'
            return
        }

        cargadoresInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cargadores.label', default: 'Cargadores'), cargadoresInstance.id])
                redirect cargadoresInstance
            }
            '*' { respond cargadoresInstance, [status: CREATED] }
        }
    }

    def edit(Cargadores cargadoresInstance) {
        respond cargadoresInstance
    }

    @Transactional
    def update(Cargadores cargadoresInstance) {
        if (cargadoresInstance == null) {
            notFound()
            return
        }

        if (cargadoresInstance.hasErrors()) {
            respond cargadoresInstance.errors, view: 'edit'
            return
        }

        cargadoresInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cargadores.label', default: 'Cargadores'), cargadoresInstance.id])
                redirect cargadoresInstance
            }
            '*' { respond cargadoresInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cargadores cargadoresInstance) {

        if (cargadoresInstance == null) {
            notFound()
            return
        }

        cargadoresInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cargadores.label', default: 'Cargadores'), cargadoresInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargadores.label', default: 'Cargadores'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
