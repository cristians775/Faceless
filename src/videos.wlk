
class Video inherits Publicacion{
	var calidad
	var duracion
	
	method calidad(cal){
		
		calidad=cal
	}
	method calidad(){
		return calidad
	}
	method duracion(dur){
		
		duracion=dur
		
	}
	method duracion(){
		return duracion
	}
	override method espacio(){
		
		if(calidad>=720){
			
			return duracion*3
		}
		else{
			
			return duracion
		}
		
	}
}
