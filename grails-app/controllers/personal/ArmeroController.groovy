package personal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ArmeroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Armero.list(params), model: [armeroInstanceCount: Armero.count()]
    }

    def show(Armero armeroInstance) {
        respond armeroInstance
    }

    def create() {
        respond new Armero(params)
    }

    @Transactional
    def save(Armero armeroInstance) {
        if (armeroInstance == null) {
            notFound()
            return
        }

        if (armeroInstance.hasErrors()) {
            respond armeroInstance.errors, view: 'create'
            return
        }

        armeroInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'armero.label', default: 'Armero'), armeroInstance.id])
                redirect armeroInstance
            }
            '*' { respond armeroInstance, [status: CREATED] }
        }
    }

    def edit(Armero armeroInstance) {
        respond armeroInstance
    }

    @Transactional
    def update(Armero armeroInstance) {
        if (armeroInstance == null) {
            notFound()
            return
        }

        if (armeroInstance.hasErrors()) {
            respond armeroInstance.errors, view: 'edit'
            return
        }

        armeroInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Armero.label', default: 'Armero'), armeroInstance.id])
                redirect armeroInstance
            }
            '*' { respond armeroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Armero armeroInstance) {

        if (armeroInstance == null) {
            notFound()
            return
        }

        armeroInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Armero.label', default: 'Armero'), armeroInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'armero.label', default: 'Armero'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
