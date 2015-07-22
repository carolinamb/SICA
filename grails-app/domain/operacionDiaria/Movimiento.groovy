package operacionDiaria

import armamento.Arma
import personal.Armero
import personal.Policia
import catalogo.Turno

class Movimiento {

    Policia policia
    Armero armero
    Turno turno
    static hasMany = [armasOcupadas:Arma]
    Boolean estatus


    Date fechaEntrega
    Date fechaRecepcion

    static constraints = {
        policia nullable: false
        armasOcupadas nullable: true
        armero nullable: false
        turno nullable: false
        fechaEntrega nullable: true
        fechaRecepcion nullable: true
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }

}
