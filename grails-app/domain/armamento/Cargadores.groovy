package armamento

class Cargadores {

    Integer cantidad
    Boolean estatus

    static constraints = {
        cantidad nullable:false
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}


