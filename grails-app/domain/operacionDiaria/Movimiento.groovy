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

    String cartuchosEntregados
    String cartuchosRecibidos
    Long cargadoresEntregados
    Long cargadoresRecibidos
    Date fecha
    String observaciones


    Date fechaEntrega
    Date fechaRecepcion

    static constraints = {
        policia nullable: false
        armasOcupadas nullable: true
        armero nullable: false
        turno nullable: false
        cartuchosEntregados nullable: true
        cartuchosRecibidos nullable: true
        cargadoresEntregados nullable: true
        cargadoresRecibidos nullable: true
        fecha nullable: true
        observaciones nullable: true
        fechaEntrega nullable: true
        fechaRecepcion nullable: true
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }

}
