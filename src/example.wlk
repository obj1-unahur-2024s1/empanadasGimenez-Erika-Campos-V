object galvan{
	var sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0
	
	method sueldo(){
		return sueldo
	}
	method cambiarSueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	 method totalDinero(){
	 	return totalDinero
	 }
	method cobrarSueldo(){
		totalDinero += sueldo
	}
	method gastar(cuanto){
		return if (totalDinero > cuanto) totalDinero -= cuanto else totalDeuda += cuanto
	}
	
	method totalDeuda(){
		return totalDeuda
	}
	method pagarDeuda(){
		const fondo = totalDinero
		totalDinero = 0.max(totalDinero - totalDeuda)
		totalDeuda =  0.max(totalDeuda - fondo)
	}	
	
}

object baigorria{
	var sueldo = 0
	var cantEmpanadasVendidas = 0
	const precioEmpanadas = 150
	var totalDinero = 0
	
	 method sueldo(){
	 	return sueldo
	 }
	 method cantEmpanadasVendidas(cuantas){
	 	cantEmpanadasVendidas += cuantas
	 }
	 method totalDinero(){
	 	return totalDinero
	 }
	method calcularSueldo(){
		sueldo = cantEmpanadasVendidas * precioEmpanadas
	}
	
	method cobrarSueldo(){
		totalDinero += sueldo
	}
}

object gimenez{
	var dinero = 3000000
	
	method pagarA(empleado) {
	    dinero -= empleado.sueldo()
	    empleado.cobrarSueldo()
}
}