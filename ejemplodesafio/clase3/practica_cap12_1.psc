Algoritmo practica_cap12_1
	//Definiciones
	Definir letra Como Caracter
	Definir repeticiones como Entero
	
	repeticiones = 0
	
	//Entradas y Proceso
	Repetir
		Mostrar "Intente adivinar la letra correcta (solo hay dos opciones posibles): "
		Leer letra
		letra = Mayusculas(letra)
		repeticiones = repeticiones + 1
	Hasta Que (letra="A" o letra="Z")
	
	//Salida
	Mostrar "La letra ingresada fue: " letra "; las posibilidades correctas son: A o Z"
	Mostrar "El numero de intentos de descifrar la letra fue: " repeticiones " intentos"
FinAlgoritmo
