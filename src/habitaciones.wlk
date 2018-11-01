import personas.*

class Habitacion {
	var property confort = 0
	const duenios = #{}
	
	method nivelConfort(prersona) {
		return confort += 10
	}
	method esDuenio(persona) {
		duenios.add(persona)
	}
}


class UsoGeneral inherits Habitacion {
	
}


class Banio inherits Habitacion {
	override method nivelConfort(persona){
		return super(persona)+
		if (persona.edad() <= 4) {return 2}
			else {return 4}
		
	}
}


class Dormitorio inherits Habitacion {
	override method nivelConfort(persona){
		return super(persona)+
		if (persona.duenio())
	}
}

class Cocina inherits Habitacion {
	
}