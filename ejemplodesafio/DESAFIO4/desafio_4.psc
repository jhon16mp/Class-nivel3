Algoritmo Desafio_4
	
	//Definiciones
	
	Dimension nombres[3]
	Dimension notas1[3]
	Dimension notas2[3]
	Dimension notas3[3]
	Dimension notas4[3]
	Dimension notas5[3]
	Dimension estatus1[3]
	Dimension estatus2[3]
	Dimension estatus3[3]
	Dimension estatus4[3]
	Dimension estatus5[3]
	Dimension Promedio[3]
	
	Definir nota1, nota2, nota3, nota4, nota5 Como Entero
	Definir materia, pase1, pase2, pase3, pase4, pase5 Como Caracter
	
	//Entradas Y PROCESOS
	
	Mostrar "BIENVENDIO A CADIF1"
	Mostrar "Ingrese la materia que cursan los estudiantes"
	Leer materia
	
	Para i=1 Hasta 3
		Mostrar "Ingrese el nombre del " i "° alumno: " Sin Saltar
		Leer nombres[i]
		//validar que el valor ingresado sea correcto
		Repetir
			Mostrar "Ingrese la nota del Desafio 1 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota1
			Si (nota1 < 0 O nota1 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota1
			
			FinSi
			
		Hasta Que nota1 >= 0 Y nota1 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas1[i] = nota1
		
		Repetir
			Mostrar "Ingrese la nota del Desafio 2 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota2
			Si (nota2 < 0 O nota2 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota2
				
			FinSi
			
		Hasta Que nota2 >= 0 Y nota2 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas2[i] = nota2
		
		Repetir
			Mostrar "Ingrese la nota del Desafio 3 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota3
			Si (nota3 < 0 O nota3 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota3
				
			FinSi
			
		Hasta Que nota3 >= 0 Y nota3 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas3[i] = nota3
		Repetir
			Mostrar "Ingrese la nota del Desafio 4 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota4
			Si (nota4 < 0 O nota4 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota4
				
			FinSi
			
		Hasta Que nota4 >= 0 Y nota4 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas4[i] = nota4
		
		Repetir
			Mostrar "Ingrese la nota del Desafio 5 del estudiante " nombres[i] ":" Sin Saltar
			Leer nota5
			Si (nota5 < 0 O nota5 > 100)Entonces
				Mostrar "Debe escribir un valor entre 0 y 100"
				Mostrar "El valor ingresado fue: " nota5
				
			FinSi
			
		Hasta Que nota5 >= 0 Y nota5 <= 100
		//se asigna el valor al arreglo una vez se ha validado.
		notas5[i] = nota5
		
	FinPara
	
	Para i=1 Hasta 3
		Si notas1[i] >= 80 Entonces
			pase1 = "APROBADO"
		SiNo
			pase1 = "REPROBADO"
		FinSi
		Si notas2[i] >= 80 Entonces
			pase2 = "APROBADO"
		SiNo
			pase2 = "REPROBADO"
		FinSi
		Si notas3[i]>= 80 Entonces
			pase3 = "APROBADO"
		SiNo
			pase3 = "REPROBADO"
		FinSi
		Si notas4[i] >= 80 Entonces
			pase4 = "APROBADO"
		SiNo
			pase4 = "REPROBADO"
		FinSi
		Si notas5[i] >= 80 Entonces
			pase5 = "APROBADO"
		SiNo
			pase5 = "REPROBADO"
		FinSi
		//colocamos las variables para mostrar luego el estado en que se encuentra el estudiante
		//en cada uno de los desafios presentados
		estatus1[i]= pase1
		
		estatus2[i]= pase2
		
		estatus3[i]= pase3
		
		estatus4[i]= pase4
		
		estatus5[i]= pase5
	FinPara
	//Hacemos un promedio aunque no se pida en el desafio para mostrarlo
	Para  i= 1 Hasta 3
		Promedio_total = notas1[i] + notas2[i] + notas3[i] + notas4[i]
		Promedio[i] = Promedio_total
	FinPara
	

	
	//Salidas
	
	Mostrar "       "
	Mostrar "       "
	//Mostramos con cuanto se tiene que pasar con cada estudiante 
	Mostrar "El MINIMO PARA APROBAR LA MATERIA ES DE 320 PUNTOS SUMANDO LOS 4 PRIMEROS DESAFIOS "
	Mostrar "EL MINIMO PARA APROBRAR EL DESAFIO 5 O EXAMEN TEORICO ES DE 80 PUNTOS"
	Mostrar "LAS NOTAS DE LOS ALUMNOS SON: "
	Para i=1 Hasta 3
		//Mostramos el estudiante con la materia a cursar con sus notas 
		Mostrar "       "
		Mostrar "alumno: " nombres[i] " de la materia " materia
		Mostrar "       "
		Mostrar " obtuvo una nota en el desafio 1 de: " notas1[i] " puntos el cual esta " estatus1[i]
		Mostrar " obtuvo una nota en el desafio 2 de: " notas2[i] " puntos el cual esta " estatus2[i]
		Mostrar " obtuvo una nota en el desafio 3 de: " notas3[i] " puntos el cual esta " estatus3[i]
		Mostrar " obtuvo una nota en el desafio 4 de: " notas4[i] " puntos el cual esta " estatus4[i]
		Mostrar "       El cual tiene un promedio de: " Promedio[i] " puntos"
		Mostrar " obtuvo una nota en el desafio 5 de: " notas5[i] " puntos el cual esta " estatus5[i]
	FinPara
FinAlgoritmo
