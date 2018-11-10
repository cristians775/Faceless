class Publicacion{
	
	var likes=[]
	var property permiso=null
	var property duenio=null
	
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
    method tienePermiso(usuario){
    	
    	return permiso.tienePermiso(usuario,duenio)
    	
    }
    method mejoresAmigos(usuario){
    	
    	return usuario.mejoresAmigos()
    }
}
