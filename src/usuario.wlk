class Usuario{
	
	var amigos=[]
	var listaBlanca=[]
	var listaNegra=[]
	var publicaciones=[]
	
	method publicar(publi){
		
		publicaciones.add(publi)
		
		
	}
	method espacioTotal(){
		
		return publicaciones.sum({publicacion=>publicacion.espacio()})
		
	}
	method darlike(publi){
		
		publi.agregarLike(self)
	}
	method totalLikes(){
		
		return publicaciones.sum({publi=>publi.likes()})
		
	}
	method darDislike(publi){
		
		publi.quitarDislike(self)
	}
	method cantidadDeAmigos(){
		
		return amigos.size()
	}
	method esMasAmistoso(usuario){
		
		return usuario.size()>self.cantidadDeAmigos()
	}
	method amigoMasPopular(){
		
		amigos.max({amigo=>amigo.totalLikes()})
		
		
	}
	method stalkea
}