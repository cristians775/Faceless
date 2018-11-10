import publicacion.*
import usuario.*

class Permiso {

	method tienePermiso(usuario, duenio)

}

class Publico inherits Permiso {

	override method tienePermiso(usuario, duenio) {
		return true
	}

}

class SoloAmigos inherits Permiso {

	override method tienePermiso(usuario, duenio) {
		return duenio.amigos().contains(usuario)
	}

}

class ListaBlanca inherits Permiso {

	override method tienePermiso(usuario, duenio) {
		return duenio.listaBlanca().contains(usuario)
	}

}

class ListaNegra inherits Permiso {

	override method tienePermiso(usuario, duenio) {
		return !duenio.listaNegra().contains(usuario)
	}

}

