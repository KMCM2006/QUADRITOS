Feature: Elegir jugar entre 4 jugadores
    Como jugador
    Quiero elegir jugar partida entre 4 jugadores
    Para jugar contra tres oponentes

    Scenario: logo del juego
        Given visito la pagina modalidad
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: cantidad de jugadores 4
        Given estoy en la pagina modalidad
        When selecciono "cuatro" jugadores opcion 3
        Then se ve "4 jugadores" seleccionado

    Scenario: ver boton de empezar la partida
        Given visito la pagina modalidad
        Then deberia ver el  boton "Empezar partida"