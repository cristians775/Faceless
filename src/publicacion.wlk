class Publicacion{
	
	var likes=[]
	var property permiso=null
	
	method espacio()
	
	method agregarLike(usuario){
		
		likes.add(usuario)
	}
	method likes(){
		
		return likes.size()
	}
	method dioLike(usuario){
		
		return likes.contains(usuario)
	}
    method quitarDislike(usuario){
    	likes.remove(usuario)
    }
    method puedeVer(usuario,duenio){
    	
    	permiso.puedeVer(usuario,duenio)
    	
    }
}
