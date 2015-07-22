package personal

class Grado {

    String descripcion
    Boolean estatus

    static constraints = {

        descripcion nullable: false
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}
