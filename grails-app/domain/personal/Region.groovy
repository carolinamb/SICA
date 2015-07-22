package personal

class Region {

    String descripcion
    Boolean estatus

    static constraints = {

        descripcion nullable: false
        estatus nullable: true
    }
}
