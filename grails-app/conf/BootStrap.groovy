import catalogo.Turno
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

    def init = { servletContext ->


        User user
        Role role
        UserRole userRole

        role = new Role(authority: 'ROLE_ADMIN', name: 'ADMINISTRADOR').save(flush: true)
        user = new User(username: 'admin', password: 'admin', passwordExpired: false, accountExpired: false, accountLocked: false, enabled: true).save(true)
        userRole = new UserRole(user:user,role:role).save(flush: true,insert: true)


        //DATOS DE PRUEBA
        Region region=new Region(descripcion: 'Region uno').save(flush: true)
        Adscripcion adscripcion=new Adscripcion(descripcion: 'adscripcion uno').save(flush: true)
        Turno turno=new Turno(descripcion: 'turno uno').save(flush: true)
        Puesto puesto=new Puesto(descripcion: 'puesto uno').save(flush: true)
        Grado grado=new Grado(descripcion: 'Grado uno').save(flush: true)
        Policia policia=new Policia(
                clave: 'AS-8000URB',
                nombre: 'Angel',
                primerApellido: 'Hernandez',
                segundoApellido: 'Gonzalez',
                puesto: 1,
                region:1,
                adscripcion:1,
                grado: 1,
                cargadoresAbastecidos: 3,
                cartuchosAbastecidos: 40).save(flush: true)
        Armero armero=new Armero(nombre: 'Juan',primerApellido: 'Perez',segundoApellido:  'Lopez',turno:1).save(flush: true)
    }
    def destroy = {
    }
}
