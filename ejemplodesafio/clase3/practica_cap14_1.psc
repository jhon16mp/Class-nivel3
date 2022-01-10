Algoritmo practica_cap14_1
	//Definiciones
	Dimension dias_semana[7]
	Definir num Como Entero
	
	//Inicializaciones
	dias_semana[1] = "Lunes"
	dias_semana[2] = "Martes"
	dias_semana[3] = "Miercoles"
	dias_semana[4] = "Jueves"
	dias_semana[5] = "Viernes"
	dias_semana[6] = "Sabado"
	dias_semana[7] = "Domingo"
	
	//Proceso
	Para i=1 hasta 7
		Mostrar "Dia " i  " de la semana es: " dias_semana[i]
	FinPara
	
	Repetir
		Mostrar "Ingrese un numero de dia de la semana: "
		leer num
	Hasta Que (num<8 y num>0)
	
	Mostrar "El dia de la semana seleccionado es: " dias_semana[num]
FinAlgoritmo
