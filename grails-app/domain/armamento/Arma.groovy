package armamento

class Arma {

    String marca
    String tipo
    String modelo
    String calibre
    String matricula

    static constraints = {

        marca nullable: false
        tipo nullable: false
        modelo nullable: false
        calibre nullable: false
        matricula nullable: false

    }
    public String toString(){
        return this.modelo+"/"+this.tipo+"/"+this.matricula
    }
}
