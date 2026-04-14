
object george{

	var paquetePersonal = paquete

	method paquetePersonal(){
		return paquetePersonal
	}

	method paqueteDeGeorge(_paqueteDeGeorge){
		paquetePersonal = _paqueteDeGeorge
	}

	method estaPagado(){
		return paquetePersonal.estaPago()
	}

	method pagar(){
		paquetePersonal.estaPago(true)
	}

	method cancelarPago(){
		paquetePersonal.estaPago(false)
	}

}

object paquete {
  var estaPago = false

  //si bien dice que para el cálculo del peso, el peso del paquete es despreciable
  //siento que puede ser útil agregalo para el caso de que en un futuro se quiera usar el peso del mismo.
  var peso = 0

  method estaPago() {
	return estaPago
  }

  method estaPago(_estaPago){
	estaPago = _estaPago
  } 

  method peso(){
	return peso
  }

  method peso(_peso){
	peso = _peso
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

	var paqueteAEntregar = paquete

	method puedeLlamar(){
		return true
	}

	method peso(){
		return peso
	}

	method puedeEntregar(ciudad){

		return paqueteAEntregar.estaPago() && ciudad.puedePasar(self)
		
	}

	method paqueteAEntregar(){
		return paqueteAEntregar
	}

	method paqueteAEntregar(_paqueteAEntregar){
		paqueteAEntregar = _paqueteAEntregar
	}
}

object neo{
	
	const peso = 0

    const celulardeNeo = celular

	var paqueteAEntregar = paquete

	method puedeLlamar(){
		
		return celulardeNeo.tieneCredito()

	}

	method peso(){
		return peso
	}

	method puedeEntregar(ciudad){

		return paqueteAEntregar.estaPago() && ciudad.puedePasar(self)
		
	}

	method paqueteAEntregar(){
		return paqueteAEntregar
	}

	method paqueteAEntregar(_paqueteAEntregar){
		paqueteAEntregar = _paqueteAEntregar
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
	var vehiculo = moto
	var paqueteAEntregar = paquete

	method peso(){
		return peso
	}

	method peso(_peso){
		peso = _peso
	}

	method vehiculo(){
		return vehiculo
	}

	method vehiculo(_vehiculo){
		vehiculo = _vehiculo
	}

	method pesoTotal(){
		return peso + vehiculo.peso()
	}

	method puedeEntregar(ciudad){
		return paqueteAEntregar.estaPago() && ciudad.puedePasar(self)
	}

	method paqueteAEntregar(){
		return paqueteAEntregar
	}

	method paqueteAEntregar(_paqueteAEntregar){
		paqueteAEntregar = _paqueteAEntregar
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
		return peso
	}

	method cantidadAcoplados(){
		return cantidadAcoplados
	}

	method cantidadAcoplados(_cantidadAcoplados){
		cantidadAcoplados = _cantidadAcoplados
	}

	method pesoTotal(){
		if (cantidadAcoplados > 0){
			return peso + (pesoAcoplado * cantidadAcoplados)
		} else {
			return peso
		}
	}
}