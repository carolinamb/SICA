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

    String cartuchosEntregados
    String cartuchosRecibidos
    Long cargadoresEntregados
    Long cargadoresRecibidos
    Date fecha
    String observaciones



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
    }

}
