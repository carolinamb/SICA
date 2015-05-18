package dto.reportes

import personal.Policia

/**
 * Created by dell on 17/05/2015.
 */
class CredencialDTO {

    String clave
    String nombre
    String primerApellido
    String segundoApellido
    String region
    String puesto
    String grado
    String adscripcion

    public CredencialDTO(Policia policia){
        this.clave=policia?.clave
        this.nombre=policia?.nombre
        this.primerApellido=policia?.primerApellido
        this.segundoApellido=policia?.segundoApellido
        this.puesto=policia?.puesto?.descripcion
        this.region=policia?.region?.descripcion
        this.grado=policia?.grado?.descripcion
        this.adscripcion=policia?.adscripcion?.descripcion
    }
}
