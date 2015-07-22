package catalogo

class Turno {

    String descripcion
    Boolean estatus

    static constraints = {
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}
