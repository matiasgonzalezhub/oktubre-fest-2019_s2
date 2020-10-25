import jarras.*

class Carpa {
	
	var property capacidad
	var property tieneBandaMusical
	var property marca
	var  clientes = []
	
	
	method dejaEntrarAPersona(persona)
	{
//		if(clientes.size() + 1 < capacidad && !persona.estaEbria())
//		{
//			clientes.add(persona)
//			return true
//		}
//		else
//		{
//			return false
//		}
		
		return clientes.size() + 1 < capacidad && !persona.estaEbrio()		
	}
	
	method puedeEntrar(persona)
	{
		return self.dejaEntrarAPersona(persona) && persona.quiereEntraACarpa()
	}
	
	method entrarPersona(persona)
	{
		if(self.puedeEntrar(persona))
		{
			clientes.add(persona)
			
		}
		else
		{
			throw new Exception( cause = null, message = "no puede ingresar")
		}
	}
	
	method servirJarra( litros , persona)
	{
		if(clientes.contains(persona))
		{
			var jarra = new Jarra(capacidad = litros, marca = marca)
			persona.agregarCerveza(jarra)
		}
		else
		{
			throw new Exception( cause = null, message = "no se puede vender, no es clietne")
		}

	}
	
	method saberCuantosEbriosEmpedernidos()
	{
		return clientes.count({ c => c.esEbrioEmpedernido()})
	}
	
	method tieneCapacidadPar()
	{
		return clientes.size() % 2 == 0
	}
}
