package armamento



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CartuchoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cartucho.list(params), model:[cartuchoInstanceCount: Cartucho.count()]
    }

    def show(Cartucho cartuchoInstance) {
        respond cartuchoInstance
    }

    def create() {
        respond new Cartucho(params)
    }

    @Transactional
    def save(Cartucho cartuchoInstance) {
        if (cartuchoInstance == null) {
            notFound()
            return
        }

        if (cartuchoInstance.hasErrors()) {
            respond cartuchoInstance.errors, view:'create'
            return
        }

        cartuchoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cartucho.label', default: 'Cartucho'), cartuchoInstance.id])
                redirect cartuchoInstance
            }
            '*' { respond cartuchoInstance, [status: CREATED] }
        }
    }

    def edit(Cartucho cartuchoInstance) {
        respond cartuchoInstance
    }

    @Transactional
    def update(Cartucho cartuchoInstance) {
        if (cartuchoInstance == null) {
            notFound()
            return
        }

        if (cartuchoInstance.hasErrors()) {
            respond cartuchoInstance.errors, view:'edit'
            return
        }

        cartuchoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cartucho.label', default: 'Cartucho'), cartuchoInstance.id])
                redirect cartuchoInstance
            }
            '*'{ respond cartuchoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cartucho cartuchoInstance) {

        if (cartuchoInstance == null) {
            notFound()
            return
        }

        cartuchoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cartucho.label', default: 'Cartucho'), cartuchoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cartucho.label', default: 'Cartucho'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
