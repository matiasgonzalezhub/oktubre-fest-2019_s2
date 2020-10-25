class Marca {
	
	var property nombre
	var property pais
	
		
	
	
}


class Cerveza
{
	
	var  gramosDeLupuloPorLitro
	var  pais
	var  graduacionAlcohol

	
	method getPais()
	{
		return pais
	}
	
	method setPais(p){ pais = p }
	
	method getGramosDeLupuloPorLitro()
	{
		return gramosDeLupuloPorLitro
	}
	
	method setGramosDeLupuloPorLitro(g){ gramosDeLupuloPorLitro = g}
	
	
	method darGraduacionAlcoholEnLitros()
	{
		return graduacionAlcohol
	}
}


class CervezaRubia inherits Cerveza
{

	override method darGraduacionAlcoholEnLitros()
	{
		return graduacionAlcohol
	}
}


class CervezaNegra inherits Cerveza
{
	var  graduacionReglamentaria = 5
	
	override method darGraduacionAlcoholEnLitros()
	{
		
		return (self.getGraduacionReglamentaria() + 2*gramosDeLupuloPorLitro).min(self.getGraduacionReglamentaria())
	}
	
	method getGraduacionReglamentaria(){return graduacionReglamentaria}
	
	method setGracuacionReglamentaria(g){ graduacionReglamentaria = g}
	
	
	
}


class CervezaRoja inherits CervezaNegra
{

	override method darGraduacionAlcoholEnLitros()
	{
		return super()*1.25
	}
}