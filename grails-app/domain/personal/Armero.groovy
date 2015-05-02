package personal

import catalogo.Turno

class Armero {

    String nombre
    String primerApellido
    String segundoApellido

    Turno turno

    static constraints = {

        nombre nullable: false
        primerApellido nullable: false
        segundoApellido nullable: false
        turno nullable: false
    }
}
