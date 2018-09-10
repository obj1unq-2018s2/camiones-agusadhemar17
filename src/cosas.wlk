/*
Contenedor portuario: Un contenedor puede tener otras cosas adentro. El peso es
100 + la suma de todas las cosas que esté adentro. Es tan peligroso como el objeto
más peligroso que contiene. Si está vacío es 0.
Residuos radioactivos: El peso es variable y su peligrosidad es 200
Embalaje de seguridad: Es una cobertura que envuelve a cualquier otra cosa. El
peso es el peso de la cosa que tenga adentro. El nivel de peligrosidad es la mitad
del nivel de peligrosidad de lo que envuelve.
 */

object contenedorPortuario {//completar
	var contenedor=  [] 
	method peso (){
		return if (conMisiles) 0.300 else 0.200
	}
	method peligrosidad(){
		return if(conMisiles) 100 else 0
	}
	
}

object bateriaAntiAerea {
	var property conMisiles 
	method peso (){
		return if (conMisiles) 0.300 else 0.200
	}
	method peligrosidad(){
		return if(conMisiles) 100 else 0
	}
	
}

object arenaAGranel {
	var toneladas 
	method peso (){
		return toneladas
	}
	method peligrosidad(){
		return 1
	}
	
	
}

object paqueteDeLadrillos {
	var ladrillos 
	
	method peso (){
		return 0.02
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
		return 0.800
	}
	
	method peligrosidad(){
		return if (esAuto) 15 else 30
	}
	
}

object knightRider {
	method peso (){
		return 0.500
	}
	method peligrosidad(){
		return 10
	}
	
}