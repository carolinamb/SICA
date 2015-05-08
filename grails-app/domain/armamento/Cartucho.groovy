package armamento

class Cartucho {

    String marca
    String calibre

    static constraints = {

        marca nullable: false
        calibre nullable: false
    }
}
