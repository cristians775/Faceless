import usuario.*
import texto.*
import fotos.*
import videos.*
import publicacion.*
import permisos.*

import factordecomprension.*

object faceless {

	var usuarios = #{}

	method agregarUsuario(usuario) {
		usuarios.add(usuario)
	}

	method usuarioPublica(usuario, publicacion) {
		usuario.publicar(publicacion)
		publicacion.duenio(usuario)
	}

	method usuarioPuedeVer(usuario, publicacion) {
		return publicacion.tienePermiso(usuario)
	}

	method darLike(usuario, publicacion) {
		if (self.usuarioPuedeVer(usuario, publicacion)) {
			usuario.darLike(publicacion)
		} else {
			self.error("El usuario no tiene permiso")
		}
	}

	method darDisLike(usuario, publicacion) {
		usuario.darDislike(publicacion)
	}

	method totalLikes(usuario) {
		return usuario.totalLikes()
	}

	method esMasAmistoso(usuario, usuario2) {
		return usuario.cantidadDeAmigos() > usuario2.cantidadDeAmigos()
	}

	method espacioTotalUs(usuario) {
		return usuario.espacioTotal()
	}

	method amigoMasPopular(usuario) {
		return usuario.amigoMasPopular()
	}

	method dioLike(usuario, publicacion) {
		return publicacion.dioLike(usuario)
	}

	method usuarioAgregaAmigo(usuario, amigo) {
		usuario.amigos(amigo)
	}

	method usuarioEstalkeaAotro(usuario, usuario2) {
		return usuario2.meEstalkea(usuario)
	}

}

