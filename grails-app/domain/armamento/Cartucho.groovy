package armamento

class Cartucho {

    String marca
    String calibre
    Boolean estatus

    static constraints = {

        marca nullable: false
        calibre nullable: false
        estatus nullable: true
    }
    def beforeInsert(){
        this.estatus=true
    }
}
