import publicacion.*

class Video inherits Publicacion {

	var property calidad = null
	var property duracion = 0

	override method espacio() {
		return duracion * calidad
	}

}

class Calidad {

	method calidad()

}

class HD inherits Calidad {

	override method calidad() {
		return 3
	}

}

class Normal inherits Calidad {

	override method calidad() {
		return 1
	}

}

