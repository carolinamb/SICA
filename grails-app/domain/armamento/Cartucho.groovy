package armamento

class Cartucho {

    //String marca
    String calibre
    String cantidad
    Boolean estatus

    static constraints = {

       // marca nullable: false
        calibre nullable: false
        cantidad nellable:false
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}
