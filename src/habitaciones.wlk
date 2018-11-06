import persona.*

class Habitacion {
	const duenios = #{}
	var property ocupantes = #{}
	
	method nivelConfort(persona) {
		return self.confortGeneral()
	}
	
	method confortGeneral(){
		return 10 
	}
	
	method esDuenio(persona) {
		duenios.add(persona)
	}
	
	method ocuparHabitacion(persona) {
		if (ocupantes.size()==0) { ocupantes.add(persona) }
			else (self.estaOcupada(persona))
	}
	
	method estaOcupada(persona)
	
	method desocuparHabitacion(persona) {
		ocupantes.remove(persona)
	}
	
}


class UsoGeneral inherits Habitacion {
	override method estaOcupada(persona){
		ocupantes.add(persona)
	}
}


class Banio inherits Habitacion {
	override method nivelConfort(persona){
		return super(persona)+
		if (persona.edad() <= 4) {return 2}
			else {return 4}
		
	}
	
	override method estaOcupada(persona) {
		if (ocupantes.any({e=> e.edad() <= 4})) { ocupantes.add(persona) }
			else {self.error(" No puede ingresar ")}
	}
}


class Dormitorio inherits Habitacion {
	
	method agregarDuenio(persona){
		duenios.add(persona)	
	}
	
	override method nivelConfort(persona){
		return super(persona)+
		(if (persona.duenio()) {10 / duenios.size()}
			else {0})
	}
	
	override method estaOcupada(persona) { 
		if(persona.duenio()) {ocupantes.add(persona)}
			else { if (ocupantes == duenios) {ocupantes.add(persona)}
						else {self.error(" No puede ingresar")}
			}
	}
}

class Cocina inherits Habitacion {
	var property metrosCuadrados = 0
	
	override method nivelConfort(persona) {
		return super(persona) + 
		(if (persona.habilidadCocina()) {metrosCuadrados*valorPorDefecto.valor()}
			else {0})
	}
	
	override method estaOcupada(persona) {
		if (not persona.habilidadCocina()) {ocupantes.add(persona)}
			else {
				if(ocupantes.any({h => h.habilidadCocina()})){
					self.error("No puede ingresar")
				}
					else {ocupantes.add(persona)}
			}
	}
}

object valorPorDefecto {
	var property valor = 0.1
}








