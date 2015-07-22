package personal

class Puesto {

    String descripcion
    Boolean estatus

    static constraints = {

        descripcion nullable: false
        estatus nullable: true
    }
}
