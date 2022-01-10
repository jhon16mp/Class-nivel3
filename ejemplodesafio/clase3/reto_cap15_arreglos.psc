Algoritmo reto_cap15_arreglos
	//Definiciones
	Dimension nombres[18]
	Dimension notas[18]
	Definir nota Como Entero
	//Entradas y Procesos
	Para i=1 Hasta 18
		Mostrar "Ingrese el nombre del " i "° alumno: " Sin Saltar
		Leer nombres[i]
		//validar que el valor ingresado sea correcto
		Repetir
			Mostrar "Ingrese la nota de " nombres[i] ":" Sin Saltar
			Leer nota
			Si (nota < 0 O nota > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota
			FinSi
		Hasta Que nota >= 0 Y nota <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas[i] = nota
	FinPara
	//Salidas
	Mostrar "Las notas de los alumnos son: "
	Para i=1 Hasta 18
		Mostrar "alumno: " nombres[i] " obtuvo una nota de: " notas[i] " puntos"
	FinPara
FinAlgoritmo
