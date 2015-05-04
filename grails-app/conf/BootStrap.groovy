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
    }
    def destroy = {
    }
}
