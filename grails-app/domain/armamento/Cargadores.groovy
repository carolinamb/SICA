package armamento

class Cargadores {

    String cantidad
    Boolean estatus

    static constraints = {

        cantidad nellable:false
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}


