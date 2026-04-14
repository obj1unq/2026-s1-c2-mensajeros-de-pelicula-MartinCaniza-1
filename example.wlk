
object paqueteDeGeorge{


	var destino = puenteDeBrooklyn
	var estaPago = false


    method estaPago() {
  		return estaPago
    }
  
    method estaPago(_estaPago){
  		estaPago = _estaPago
    } 

	method destino(){
		return destino
	}

	method destino(_destino){
		destino = _destino
	}

	method puedeEntregar(mensajero){
		return self.estaPago() && destino.puedePasar(mensajero)
	}

}


object puenteDeBrooklyn {
	var pesoPermitido = 1000

	method pesoPermitido(){
		return pesoPermitido
    }

	method pesoPermitido(_pesoPermitido){
		pesoPermitido = _pesoPermitido
	}

	method puedePasar(persona){
		return pesoPermitido >= persona.peso() 
	}
}

object matrix{

	method puedePasar(persona){
		return persona.puedeLlamar()
	}

}

object jeanGray{
	
	const peso = 65


	method puedeLlamar(){
		return true
	}

	method peso(){
		return peso
	}

}

object neo{
	
	const peso = 0
    const celulardeNeo = celular


	method puedeLlamar(){
		
		return celulardeNeo.tieneCredito()

	}

	method peso(){
		return peso
	}

}

object celular{
	var tieneCredito = false

	method tieneCredito(){
		return tieneCredito
	}

	method tieneCredito(_tieneCredito){
		tieneCredito = _tieneCredito
	}

}

object saraConnor{
	var peso = 70
	var vehiculo = camion

	method peso(_peso){
		peso = _peso
	}

	method peso(){
		return peso + vehiculo.peso()
	}

	method vehiculo(){
		return vehiculo
	}

	method vehiculo(_vehiculo){
		vehiculo = _vehiculo
	}

}

object moto{
	const peso = 100

	method peso(){
		return peso
	}

}

object camion{
	const peso = 500
	const pesoAcoplado = 500
	var cantidadAcoplados = 0

	method peso(){
		return peso + (pesoAcoplado * cantidadAcoplados)
	}

	method cantidadAcoplados(){
		return cantidadAcoplados
	}

	method cantidadAcoplados(_cantidadAcoplados){
		cantidadAcoplados = _cantidadAcoplados
	}


}