package personal

import armamento.Arma
import armamento.Cartucho

class Policia {

    String clave
    String nombre
    String primerApellido
    String segundoApellido
    Long cartuchosAbastecidos
    Long cargadoresAbastecidos

    Region region
    Puesto puesto
    Grado grado
    Adscripcion adscripcion

    static hasMany = [armas:Arma,cartuchos:Cartucho]

    static constraints = {
        clave nullable: false, unique: true
        nombre nullable: false
        primerApellido nullable: false
        segundoApellido nullable: false
        region nullable: false
        puesto nullable: false
        grado nullable: false
        adscripcion nullable: false
        cartuchosAbastecidos nullable: false
        cargadoresAbastecidos nullable: false
        armas nullable:true
        cartuchos nullable:true
    }
}
