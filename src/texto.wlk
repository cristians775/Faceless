import publicacion.*
class Texto inherits Publicacion{
	
	var property texto=""
	
	override method espacio(){
		
		return texto.size()
	}
	
	
	
}