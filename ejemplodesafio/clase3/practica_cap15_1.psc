Algoritmo practica_cap15_1
	//Definiciones
	Dimension array[10]
	Definir num, val, numerosPositivos, numerosNegativos Como Entero
	
	//Inicializaciones
	numerosNegativos = 0
	numerosPositivos = 0
	
	//Entradas y Procesos
	Para cada num de array
		Repetir
			Mostrar "Ingrese los valores entre -20 y 20"
			Leer val
			Si (val < -20 O val > 20) entonces
				Mostrar "El valor ingresado debe estar en -20 y 20"
			FinSi
		Hasta Que (val >= -20 y val <= 20)
		num = val
	FinPara
	
	Para cada pos de array 
		Si (pos >= 0) Entonces
			numerosPositivos = numerosPositivos + 1
		SiNo
			numerosNegativos = numerosNegativos + 1
		FinSi
	FinPara
	
	//Salidas
	Limpiar Pantalla
	Para i=1 hasta 10
		Mostrar "El valor del arreglo en la posicion " i " es: " array[i]
	FinPara
	Mostrar ""
	Mostrar "El numero de elementos positivos es: " numerosPositivos
	Mostrar ""
	Mostrar "El numero de elementos negativos es: " numerosNegativos
FinAlgoritmo
