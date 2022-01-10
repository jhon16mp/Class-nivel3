Algoritmo practica_cap13_2
	//Definiciones
	Definir letra Como Caracter
	Definir Opc Como Logico
	
	//Inicializaciones
	letra = "A"
	Opc = verdadero
	
	//Procesos
	Mientras (Opc)
		Mostrar "Ingrese su opcion (Si:`S` o No:`N`): "
		Leer letra
		letra = Mayusculas(letra)
		Si (letra="S" o letra="N") entonces
			Opc = falso
		FinSi
	FinMientras
	
	Mostrar "La opcion seleccionada es: `" letra "`"
FinAlgoritmo
