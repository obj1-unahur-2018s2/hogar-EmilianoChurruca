import persona.*

class Habitacion {
	var property confort = 0
	const duenios = #{"juan"}
	
	method nivelConfort(persona) {
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
		if (persona.duenio()){return 10 / duenios.size()}
			else {}
	}
}

class Cocina inherits Habitacion {
	
}