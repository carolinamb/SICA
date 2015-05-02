package armamento



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ArmaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Arma.list(params), model: [armaInstanceCount: Arma.count()]
    }

    def show(Arma armaInstance) {
        respond armaInstance
    }

    def create() {
        respond new Arma(params)
    }

    @Transactional
    def save(Arma armaInstance) {
        if (armaInstance == null) {
            notFound()
            return
        }

        if (armaInstance.hasErrors()) {
            respond armaInstance.errors, view: 'create'
            return
        }

        armaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'arma.label', default: 'Arma'), armaInstance.id])
                redirect armaInstance
            }
            '*' { respond armaInstance, [status: CREATED] }
        }
    }

    def edit(Arma armaInstance) {
        respond armaInstance
    }

    @Transactional
    def update(Arma armaInstance) {
        if (armaInstance == null) {
            notFound()
            return
        }

        if (armaInstance.hasErrors()) {
            respond armaInstance.errors, view: 'edit'
            return
        }

        armaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Arma.label', default: 'Arma'), armaInstance.id])
                redirect armaInstance
            }
            '*' { respond armaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Arma armaInstance) {

        if (armaInstance == null) {
            notFound()
            return
        }

        armaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Arma.label', default: 'Arma'), armaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'arma.label', default: 'Arma'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
