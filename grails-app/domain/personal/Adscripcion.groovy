package personal

class Adscripcion {

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
