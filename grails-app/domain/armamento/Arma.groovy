package armamento

class Arma {

    String marca
    String tipo
    String modelo
    String calibre
    String matricula
    Boolean estatus
    int cantidadCartuchos
    int cantidadCargadores
    /*
    * STATUS:
    * true--->Activo
    * false-->Borrado logicamente
    * */

    static constraints = {
        cantidadCartuchos null:false
        cantidadCargadores null:false
        marca nullable: false
        tipo nullable: false
        modelo nullable: false
        calibre nullable: false
        matricula nullable: false
        estatus nullable: true
    }

    def beforeInsert(){
        this.estatus=true
    }
    public String toString(){
        return this.modelo+"/"+this.tipo+"/"+this.matricula
    }
}
