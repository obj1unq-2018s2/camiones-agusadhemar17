import cosas.*


object camion {
	var tara=1
	var carga = []
	var pesoTotal = []
	
	method cargar (cosa){
		carga.add(cosa)
		pesoTotal.add()
	} 
	
	method descargar (cosa){
		carga.remove(cosa)
	}  
	
	method pesoTotal(){ //Es la suma del peso del camión vacío (tara) y su carga. la tara del camión es de 1 tonelada
	//	return tara+ cosa.peso()
	}
	
	method excedidoDePeso(){
		//return pesoTotal.forEach ({cosa=> cosa.pesoTotal()>2.5})
	}
	
	method objetosPeligrosos(n){
		return carga.filter ({elemento => elemento.peligrosidad() > n})	
	}// Todos los objetos cargados que superan el nivel de peligrosidad n.
	
	method objetosMasPeligrososQue(cosa){
		return carga.filter ({elemento => elemento.peligrosidad() > cosa.peligrosidad() })
	}// Todos los objetos cargados que son más peligrosos que la cosa.
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return carga.any({elemento => !(elemento.peligrosidad() > nivelMaximoPeligrosidad) })
	} //Puede circular si ningúna cosa que transporta supera el nivelMaximoPeligrosidad. */
}

object deposito{
	var property cosas = [knightRider,bumblebee]
	method cargarCamion(camion){
		cosas.forEach({cosa => camion.cargar (cosa)})//el bloque tiene que ser capaz de devolver un resultado	
	}
}

