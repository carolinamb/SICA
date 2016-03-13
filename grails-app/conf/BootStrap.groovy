import armamento.Arma
import armamento.Cargadores
import armamento.Cartucho
import catalogo.Turno
import groovy.sql.Sql
import personal.Adscripcion
import personal.Armero
import personal.Grado
import personal.Policia
import personal.Puesto
import personal.Region
import security.Role
import security.User
import security.UserRole

class BootStrap {

    def dataSource
    def init = { servletContext ->

        InputStream is = null
        Sql db = new Sql(dataSource)
        StringBuilder urlCatalogos = new StringBuilder(servletContext.getRealPath('/catalogos/'))
        urlCatalogos.append('/')

        if (!User.findByUsername('admin')){
            User user
            Role role
            UserRole userRole

            role = new Role(authority: 'ROLE_ADMIN', name: 'ADMINISTRADOR').save(flush: true)
            user = new User(username: 'admin', password: 'admin', passwordExpired: false, accountExpired: false, accountLocked: false, enabled: true).save(true)
            userRole = new UserRole(user:user,role:role).save(flush: true,insert: true)
        }

        if(!Adscripcion.first()){
            // Catálogo de ADSCRIPCION
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catAdscripcion.sql')
                println "::::::::: Adscripciones: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Adscripciones 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }
        if(!Cartucho.first()){
            // Catálogo de CARTUCHO
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catCartucho.sql')
                println "::::::::: Cartuchos: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Cartuchos 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }
        /*if(!Cargadores.first()){
            // Catálogo de CARGADORES
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catCargadores.sql')
                println "::::::::: Cargadores: 0%... "
                is.eachLine { line ->
                    db.executeInsert(line)
                }
                println "Cargadores 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }*/
        if(!Arma.first()){
            // Catálogo de ARMA
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catArma.sql')
                println "::::::::: Armas: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Armas 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }
        if(!Grado.first()){
            // Catálogo de GRADO
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catGrado.sql')
                println "::::::::: Grados: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Grados 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }
        if(!Puesto.first()){
            // Catálogo de PUESTO
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catPuesto.sql')
                println "::::::::: Puestos: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Puestos 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }
        if(!Region.first()){
            // Catálogo de REGION
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catRegion.sql')
                println "::::::::: Regiones: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Regiones 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }
        if(!Turno.first()){
            // Catálogo de TURNO
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catTurno.sql')
                println "::::::::: Turnos: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Turnos 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }
        if(!Policia.first()){
            // Catálogo de POLICIA
            try {
                is = new FileInputStream(urlCatalogos.toString() + 'catPolicia.sql')
                println "::::::::: Policias: 0%... "
                is.eachLine { line ->
                        db.executeInsert(line)
                }
                println "Policias 100% :::::::::"
            } catch (Exception ex) {
                println(ex)
            }
        }

        //DATOS DE PRUEBA
        /*Region region=new Region(descripcion: 'Region uno').save(flush: true)
        Adscripcion adscripcion=new Adscripcion(descripcion: 'Transito').save(flush: true)
        Turno turno=new Turno(descripcion: 'Turno uno').save(flush: true)
        Puesto puesto=new Puesto(descripcion: 'Secretario').save(flush: true)
        Grado grado=new Grado(descripcion: 'Comosario Jefe').save(flush: true)
        Policia policia=new Policia(
                clave: '0001',
                nombre: 'Alejandro',
                primerApellido: 'Rojo',
                segundoApellido: 'Rico',
                puesto: 1,
                region:1,
                adscripcion:1,
                grado: 1,
                turno: 1,
                cargadoresAbastecidos: 3,
                cartuchosAbastecidos: 40).save(flush: true)
        Armero armero=new Armero(nombre: 'Juan',primerApellido: 'Perez',segundoApellido:  'Lopez',turno:1).save(flush: true)*/
    }
    def destroy = {
    }
}
