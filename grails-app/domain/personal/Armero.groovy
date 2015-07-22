package personal

import catalogo.Turno

class Armero {

    String nombre
    String primerApellido
    String segundoApellido
    Boolean estatus

    Turno turno

    static constraints = {

        nombre nullable: false
        primerApellido nullable: false
        segundoApellido nullable: false
        turno nullable: false
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}
