package personal

import armamento.Arma
import armamento.Cartucho
import catalogo.Turno

class Policia {

    String clave
    String nombre
    String primerApellido
    String segundoApellido
    String cartuchosAbastecidos
    Long cargadoresAbastecidos
    Boolean estatus

    Region region
    Puesto puesto
    Grado grado
    Adscripcion adscripcion
    Turno turno


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
        turno nullable: false
        cartuchosAbastecidos nullable: false
        cargadoresAbastecidos nullable: false
        armas nullable:true
        cartuchos nullable:true
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}
