import faceless.*

class Usuario {

	var amigos = #{}
	var listaBlanca = #{}
	var listaNegra = #{}
	var publicaciones = #{}
	var mejoresAmigos = #{}

	method publicar(publi) {
		publicaciones.add(publi)
	}

	method espacioTotal() {
		return publicaciones.sum({ publicacion => publicacion.espacio() })
	}

	method darLike(publi) {
		publi.agregarLike(self)
	}

	method totalLikes() {
		return publicaciones.sum({ publi => publi.likes() })
	}

	method darDislike(publi) {
		publi.quitarDislike(self)
	}

	method cantidadDeAmigos() {
		return amigos.size()
	}

	method amigoMasPopular() {
		return amigos.max({ amigo => amigo.totalLikes() })
	}

	method amigos(amigo) {
		amigos.add(amigo)
	}

	method amigos() {
		return amigos
	}

	method listaBlanca(usuario) {
		listaBlanca.add(usuario)
	}

	method listaBlanca() {
		return listaBlanca
	}

	method listaNegra(usuario) {
		listaNegra.add(usuario)
	}

	method listaNegra() {
		return listaNegra
	}

	method mejoresAmigos(amigo) {
		amigos.add(amigo)
		listaBlanca.add(amigo)
		mejoresAmigos.add(amigo)
	}

	method mejoresAmigos() {
		return mejoresAmigos
	}

	method meEstalkea(usuario) {
		return publicaciones.filter({ publicacion => publicacion.dioLike(usuario) }).size() > ((publicaciones.size() * 90) / 100)
	}

}

