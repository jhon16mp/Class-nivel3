Algoritmo practica_cap13_3
	//Definiciones
	Definir letra Como Caracter
	
	//Inicializaciones
	letra = "A"
	
	//Proceso
	Repetir
		Mostrar "Ingrese su opcion (Si:`S` o No:`N`): "
		Leer letra
		letra = Mayusculas(letra) 
	Hasta Que (letra="S" o letra="N")
	
	Mostrar "La opcion seleccionada es: `" letra "`"
FinAlgoritmo
