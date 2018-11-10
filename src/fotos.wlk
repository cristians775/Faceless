import factordecomprension.*
import publicacion.*

class Foto inherits Publicacion {

	var property alto = 0
	;
	var property ancho = 0

	;
	
  override method espacio() {
		return (ancho * alto) * factorDeComprension.factorDeComprension()
	}

}

