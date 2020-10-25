class Persona {
	
	 var property peso
	 var  cervezasCompradas = []
	 var property gustaMusicaTradicional
	 var property nivelDeAguante
	 var property nacionalidad
	 
	 method agregarCerveza(jarra)
	 {
	 	cervezasCompradas.add(jarra)
	 }
	 
	 method estaEbrio()
	 {
	 	return cervezasCompradas.sum({ j => j.capacidad() })*peso > nivelDeAguante
	 }
	 
	 method marcasFavoritas()
	 {
	 	return cervezasCompradas.map({ j => j.marca()})
	 }
	 
	 method totalAlcholIngerido()
	 {
	 	//return cervezasCompradas.sum({ j => j.capacidad()})
	 	return cervezasCompradas.sum({ j => j.saberContenidoDeAlcohol()})
	 }
	 
	 method leGustaCerveza(marcaCerveza)
	 {
	 	return cervezasCompradas.any({ j => j.marca().nombre() == marcaCerveza})
	 }
	 
	 method esEbrioEmpedernido()
	 {
	 	return cervezasCompradas.all({ j => j.capacidad() > 1})
	 }
	 
	 method esPatriota()
	 {
	 	return cervezasCompradas.all({ j => j.marca().pais() == nacionalidad })
	 }
	 
	 method quiereEntraACarpa(carpa)
	 {	 	 	
	 	if(nacionalidad == "alemana")
	 	{	 		
	 		return cervezasCompradas.any({ j => j.marca().nombre() == carpa.marcaVendida().nombre()}) 
	 			   && gustaMusicaTradicional == carpa.tieneBandaMusical() && carpa.tieneCapacidadPar()
	 	}
	 	else
	 	{
	 		return cervezasCompradas.any({ j => j.marca().nombre() == carpa.marcaVendida().nombre()})
	 		 && gustaMusicaTradicional == carpa.tieneBandaMusical() 
	 	}
	 }
}
