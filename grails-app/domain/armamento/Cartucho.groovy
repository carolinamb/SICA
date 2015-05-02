package armamento

class Cartucho {

    String marca
    Long calibre

    static constraints = {

        marca nullable: false
        calibre nullable: false
    }
}
