Funcion Bienvenida( inicioJuego )
	Escribir "               ********************************************"
	escribir "                   -- BIENVENIDO A PiedraPapelTijeras --   "
	Escribir "               ********************************************"
	Escribir ""
	
	Escribir "Usted se enfretara a la Maquina, un agil contricante! "
	
	Escribir ""
Fin Funcion

//-------------------------------------------------------------------//

Funcion cronometro( segundosCrono )
	Mientras segundosCrono <= 5 Hacer
		
		Limpiar Pantalla
		
		Escribir ""
		Escribir "                      Espere a que inicie el juego"
		Escribir ""
		
		si segundosCrono > 5 Entonces
			Escribir ":" ,segundos
		SiNo
			Escribir  "0:0" ,segundosCrono
		FinSi
		
		segundosCrono = segundosCrono + 1
		
		Esperar 1 Segundo
		
		Limpiar Pantalla
		
	FinMientras	
Fin Funcion

//--------------------------------PROCEDIMIENTOS---------------------------------------------------//


Algoritmo  piedraPapelTijeras
	
	Definir jugadaPersona, JugadaMaquina como entero
	Definir nombreJugador, fecha Como Caracter
	

	Dimension jugadas[4]
	
	jugadas[1] <- "Piedra"
	jugadas[2] <- "Papel"
	jugadas[3] <- "Tijeras"
	
	
	Bienvenida(inicioJuego)
	
	Escribir "Ingrese su Nombre, abajo ingrese la fecha del dia de hoy (dd/mm/aaaa)"
	Leer nombreJugador
	Leer fecha
	
//-------------------------------------------------------------------//
	cronometro(segundosCrono) 
	Limpiar Pantalla
//-------------------------------------------------------------------//

	Escribir ""	
	Escribir "                 Perfecto " ,nombreJugador " te deseamos suerte !"
	Escribir ""
	
	
	Repetir 
		
		juego = juego + 1
		
		Escribir "Seleccione que jugada quiere" 
		Escribir "1 - Piedra"
		Escribir "2 - Papel"
		Escribir "3 - Tijeras"
		Leer jugadaPersona
		
		Limpiar Pantalla
		//-------------------------------------------------------------------//
		
		Escribir ""
		
		JugadaMaquina <- Aleatorio(1,3) 
		
		//-------------------------------------------------------------------//.
		Segun jugadaPersona Hacer
			
			1: 
				puntajeJugador1 = 0
				puntajeMaquina1 = 0
				
				Si ( jugadas[jugadaMaquina] == "Tijeras") Entonces
					Escribir "                __________________________________________ "
					escribir "               | Usted eligio " ,jugadas[1] " y la Maquina " ,jugadas[3] " |"
					escribir "               |          MUY BIEN, GANASTE!!!            |"                    
					Escribir "               |__________________________________________|"
					puntajeJugador1 = puntajeJugador1 + 3
				FinSi
				
				si ( jugadas[jugadaMaquina] == "Papel" ) Entonces
					Escribir "                __________________________________________ "
					escribir "               | La Maquina eligio " ,jugadas[2] " y Usted " ,jugadas[1] "   |"
					escribir "               |          MAL, SEGUI INTENTANDO!!!        |"                    
					Escribir "               |__________________________________________|"
					puntajeMaquina1 = puntajeMaquina1 + 3
				FinSi
				
				si ( jugadas[jugadaMaquina] == "Piedra" ) Entonces
					Escribir "                __________________________________________ "
					escribir "               | Usted eligio " ,jugadas[1] " y la Maquina " ,jugadas[1]  "  |"
					escribir "               |          EMPATASTE, CASI GANAS!!!        |"                    
					Escribir "               |__________________________________________|"
					puntajeMaquina1 = puntajeMaquina1 + 1
					puntajeJugador1 = puntajeJugador1 + 1
				FinSi
				
				//-------------------------------------------------------------------//
			2: 	
				puntajeJugador2 = 0
				puntajeMaquina2 = 0
				
				Si ( jugadas[jugadaMaquina] = "Piedra") Entonces
					Escribir "                __________________________________________ "
					escribir "               | Usted eligio " ,jugadas[2] " y la Maquina " ,jugadas[1] "   |"
					escribir "               |          MUY BIEN, GANASTE!!!            |"                    
					Escribir "               |__________________________________________|"
					puntajeJugador2 = puntajeJugador2 + 3
				FinSi
				
				si ( jugadas[jugadaMaquina] = "Tijeras" ) Entonces
					Escribir "                __________________________________________ "
					escribir "               | La Maquina eligio " ,jugadas[3] " y Usted " ,jugadas[2] "  |"
					escribir "               |          MAL, SEGUI INTENTANDO!!!        |"                    
					Escribir "               |__________________________________________|" 
					puntajeMaquina2 = puntajeMaquina2 + 3
				FinSi
				
				si ( jugadas[jugadaMaquina] = "Papel" ) Entonces
					Escribir "                __________________________________________ "
					escribir "               | Usted eligio " ,jugadas[2] " y la Maquina " ,jugadas[2] "    |"
					escribir "               |          EMPATASTE, CASI GANAS!!!        |"                    
					Escribir "               |__________________________________________|"
					puntajeMaquina2 = puntajeMaquina2 + 1
					puntajeJugador2 = puntajeJugador2 + 1
				FinSi
				
				
				//-------------------------------------------------------------------//
			3: 
				puntajeJugador3 = 0
				puntajeMaquina3 = 0
				
				Si ( jugadas[jugadaMaquina] = "Papel") Entonces
					Escribir "                __________________________________________ "
					escribir "               | La Maquina eligio " ,jugadas[3] " y Usted " ,jugadas[2] "  |"
					escribir "               |          MAL, SEGUI INTENTANDO!!!        |"                    
					Escribir "               |__________________________________________|" 
					puntajeJugador3 = puntajeJugador3 + 3
				FinSi
				
				si ( jugadas[jugadaMaquina] = "Piedra" ) Entonces
					Escribir "                __________________________________________ "
					escribir "               | La Maquina eligio " ,jugadas[1] " y Usted " ,jugadas[3] "   |"
					escribir "               |          MAL, SEGUI INTENTANDO!!!        |"                    
					Escribir "               |__________________________________________|"
					puntajeMaquina3 = puntajeMaquina3 + 3
				FinSi
				
				si ( jugadas[jugadaMaquina] = "Tijera" ) Entonces
					Escribir "                __________________________________________ "
					escribir "               | Usted eligio " ,jugadas[3] " y la Maquina " ,jugadas[3] "|"
					escribir "               |          EMPATASTE, CASI GANAS!!!        |"                    
					Escribir "               |__________________________________________|"
					puntajeMaquina3 = puntajeMaquina3 + 1
					puntajeJugador3 = puntajeJugador3 + 1
				FinSi
				
				//-------------------------------------------------------------------//
				
			De Otro Modo:
				
				Escribir "Jugada Fuera de Rango"
				
		Fin Segun
		
		Esperar 2 Segundos
		Limpiar Pantalla
		
		
	Hasta Que (juego = 3)
	
	//-------------------------------------------------------------------//
	Escribir "Salir del juego, seleccione: 1"
	Escribir "Ver puntaje, seleccione: 2"
	Leer menuResultados
	Limpiar Pantalla
	//-------------------------------------------------------------------//
	
	Segun (menuResultados) Hacer
			
			//-------------------------------------------------------------------//
			
		1:   
			Escribir "                         -- Saliendo del Juego --"
			Escribir "" 	
			Esperar 1 Segundos
			Escribir "                            Suerte la proxima !  "				
			Escribir ""
			Esperar 1 Segundos
			Borrar Pantalla
			//-------------------------------------------------------------------//
			
		2:
			//-------------------------------------------------------------------//
			
			Escribir ""
			Escribir "                          --- JUGADA " ,fecha " ---"
			
			
			escribir ,nombreJugador " (" ,puntajeJugador1 "  |  " ,puntajeMaquina1  ") Maquina " 
			escribir ,nombreJugador " (" ,puntajeJugador2 "  |  " ,puntajeMaquina2  ") Maquina "
			escribir ,nombreJugador " (" ,puntajeJugador3 "  |  " ,puntajeMaquina3  ") Maquina "
			
			
			Escribir  ""
			Escribir "Calculando Resultados..."
			Esperar 2 Segundos
			Escribir ""
			
			puntajeJugador = puntajeJugador1 + puntajeJugador2 + puntajeJugador3
			puntajeMaquina = puntajeMaquina1 + puntajeMaquina2 + puntajeMaquina3
			
			Si (puntajeJugador > puntajeMaquina)
				
				Escribir "Total de puntos: " ,nombreJugador " (" ,puntajeJugador " - " ,puntajeMaquina ") Maquina"
				Escribir ""
				Escribir "                Felicitaciones, has ganado!"
				
			FinSi
			
			Si (puntajeJugador < puntajeMaquina)
				
				Escribir "Total de puntos: " ,nombreJugador " (" ,puntajeJugador " - " ,puntajeMaquina ") Maquina"
				Escribir ""
				Escribir "                Gano la maquina, la proxima sera!"
				
			FinSi
			
			Si (puntajeJugador = puntajeMaquina)
				
				Escribir "Total de puntos: " ,nombreJugador " (" ,puntajeJugador " - " ,puntajeMaquina ") Maquina"
				Escribir ""
				Escribir "                 Esta mal, pero no tan mal, Empataste! "
				
			FinSi
			
		De Otro Modo:
			
			Escribir "Opcion No Especificada"
			
			//-------------------------------------------------------------------//
			
	FinSegun
	
FinAlgoritmo