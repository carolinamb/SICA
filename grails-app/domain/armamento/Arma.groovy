package armamento

class Arma {

    String marca
    String tipo
    String modelo
    Long calibre
    String matricula

    static constraints = {

        marca nullable: false
        tipo nullable: false
        modelo nullable: false
        calibre nullable: false
        matricula nullable: false

    }
}
