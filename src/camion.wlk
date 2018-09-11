import cosas.*


object camion {
	const tara=1000
	var carga = []
	
	method cargar (cosa){
		carga.add(cosa)
		
	} 
	
	method descargar (cosa){
		carga.remove(cosa)
	}  
	
	method pesoTotal(){ //Es la suma del peso del camión vacío (tara) y su carga. la tara del camión es de 1 tonelada
		return tara+carga.sum({elemento=>elemento.peso()}) 
		//segundaVersion: return carga.map({elemento=>elemento.peso()}.sum())+tara
		/*tercera version: const peso = carga.map {elemento=>elemento.peso()}}
		return peso.sum() + tara*/
	}
	

	method excedidoDePeso(){//: Si el peso total es superior al peso máximo. El cual es de 2.5 toneladas
				//return pesoTotal.forEach ({cosa=> cosa.pesoTotal()>2.5})
	}
	
	method objetosPeligrosos(n){
		return carga.filter ({elemento => elemento.peligrosidad() > n})	
	}// Todos los objetos cargados que superan el nivel de peligrosidad n.
	
	method objetosMasPeligrososQue(cosa){
		return carga.filter ({elemento => elemento.peligrosidad() > cosa.peligrosidad() })
	
	}// Todos los objetos cargados que son más peligrosos que la cosa.
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return not carga.any({elemento => elemento.peligrosidad() > nivelMaximoPeligrosidad})
		//return carga.all({elemento => elemento.peligrosidad() <= nivelMaximoPeligrosidad})
	} //Puede circular si ningúna cosa que transporta supera el nivelMaximoPeligrosidad. */
	
	method tieneAlgoQuePesaEntre (min,max){
		return carga.any({elemento => elemento.peso().between(min, max)})	
	
	}
	
	method cosaMasPesada() {
		return carga.max {elemento=>elemento.peso()}//devuelve el elemento mas pesado
	//method cosaMasPesada() = carga.max {elemento=>elemento.peso()}.peso()// devuelve el peso de la cosa mas pesada
	}
	}
/*object deposito{
	var property cosas = [knightRider,bumblebee]
	method cargarCamion(camion){
		cosas.forEach({cosa => camion.cargar (cosa)})//el bloque tiene que ser capaz de devolver un resultado	
	}
}*/

