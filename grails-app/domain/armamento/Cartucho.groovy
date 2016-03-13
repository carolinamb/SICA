package armamento

class Cartucho {

    //String marca
    String calibre
    Integer cantidad
    Boolean estatus

    static constraints = {

       // marca nullable: false
        calibre nullable: false
        cantidad nullable:false
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}
