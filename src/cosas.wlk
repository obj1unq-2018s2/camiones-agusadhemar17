/*
Contenedor portuario: 

*/
object embalajeDeSeguridad {/*Es una cobertura que envuelve a cualquier otra cosa. El
peso es el peso de la cosa que tenga adentro. El nivel de peligrosidad es la mitad
del nivel de peligrosidad de lo que envuelve*/
	
	
	method peso (cosa){
		return cosa.peso()
	}
	method peligrosidad(cosa){
		return cosa.peligrosidad()/2
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

object contenedorPortuario {/*Un contenedor puede tener otras cosas adentro. El peso es
100 + la suma de todas las cosas que esté adentro. Es tan peligroso como el objeto
más peligroso que contiene. Si está vacío es 0.*/
	var contenedor=  [] 
	method peso (cosa){
		return if (contenedor.isEmpty()) 0 else 100+contenedor.sum ({elemento => cosa.peso()})
	}
	
	method peligrosidad(){
		return if (contenedor.isEmpty()) 0 else contenedor.max({elemento => elemento.peligrosidad()})
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
	var ladrillos = 0
	
	method peso (){
		return 2
	}
	method peligrosidad(){
		return 15
	}
	method cantidadLadrillos(){
		return ladrillos
	}
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