package personal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PoliciaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Policia.list(params), model: [policiaInstanceCount: Policia.count()]
    }

    def show(Policia policiaInstance) {
        respond policiaInstance
    }

    def create() {
        respond new Policia(params)
    }

    @Transactional
    def save(Policia policiaInstance) {
        if (policiaInstance == null) {
            notFound()
            return
        }

        if (policiaInstance.hasErrors()) {
            respond policiaInstance.errors, view: 'create'
            return
        }

        policiaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'policia.label', default: 'Policia'), policiaInstance.id])
                redirect policiaInstance
            }
            '*' { respond policiaInstance, [status: CREATED] }
        }
    }

    def edit(Policia policiaInstance) {
        respond policiaInstance
    }

    @Transactional
    def update(Policia policiaInstance) {
        if (policiaInstance == null) {
            notFound()
            return
        }

        if (policiaInstance.hasErrors()) {
            respond policiaInstance.errors, view: 'edit'
            return
        }

        policiaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Policia.label', default: 'Policia'), policiaInstance.id])
                redirect policiaInstance
            }
            '*' { respond policiaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Policia policiaInstance) {

        if (policiaInstance == null) {
            notFound()
            return
        }

        policiaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Policia.label', default: 'Policia'), policiaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'policia.label', default: 'Policia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
