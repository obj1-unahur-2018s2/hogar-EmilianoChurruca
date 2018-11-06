import habitaciones.*

class Persona {
	var property edad = 0
	var habilidadCocina = false
	var duenio = true
	var habitacionActual = ""
	
	method esDuenio() {
		duenio = true
	}
	
	method noEsDuenio(){
		duenio = false
	}
	
	method duenio() {
		return duenio
	}
	
	method esHabil() {
		habilidadCocina = true
	}
	
	method noEsHabil(){
		habilidadCocina = false
	}
	
	method habilidadCocina() {
		return habilidadCocina
	}
}