/*
Contenedor portuario: 

*/
object embalajeDeSeguridad {/*Es una cobertura que envuelve a cualquier otra cosa. El
peso es el peso de la cosa que tenga adentro. El nivel de peligrosidad es la mitad
del nivel de peligrosidad de lo que envuelve*/
	
	var property contenido
	method peso (){
		return contenido.peso()
	}
	method peligrosidad(){
		return contenido.peligrosidad()/2
	}
	
}

object residuosRadioactivos {
	var property toneladas = 0
	
	method peso (){
		return toneladas
	}
	method peligrosidad(){
		return 200
	}
	
}

object contenedorPortuario {
	const contenedor=  [] 
	method contenido (cosa)	{ return contenedor.add(cosa)}
	method peso (cosa){
		return if (contenedor.isEmpty()) 0 else 100+contenedor.sum ({elemento => cosa.peso()})
	}
	
	method peligrosidad(){
		return if (contenedor.isEmpty()) 0 else contenedor.max({elemento => elemento.peligrosidad()}).peligrosidad()
	}
	
}

object bateriaAntiAerea {
	var property conMisiles = true
	method peso (){
		return if (conMisiles) 300 else 200
	}
	method peligrosidad(){
		return if(conMisiles) 100 else 0
	}
	
}

object arenaAGranel {
	var property toneladas = 0 
	method peso (){
		return toneladas
	}
	method peligrosidad(){
		return 1
	}
}

object paqueteDeLadrillos {
	var property ladrillos = 0
	
	method peso (){
		return ladrillos*2
	}
	method peligrosidad(){
		return 15
	}
	//method cantidadLadrillos(){
	//	return ladrillos
	//}
}

object bumblebee {
	var property esAuto = true
	
	method peso (){
		return 800
	}
	
	method peligrosidad(){
		return if (esAuto) 15 else 30
	}
	
}

object knightRider {
	method peso (){
		return 500
	}
	method peligrosidad(){
		return 10
	}
	
}