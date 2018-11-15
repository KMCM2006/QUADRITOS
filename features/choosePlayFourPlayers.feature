Feature: Elegir jugar entre 4 jugadores
    Como jugador
    Quiero elegir jugar partida entre 4 jugadores
    Para jugar contra tres oponentes

    Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono "cuatro" jugadores opcion 4
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono "cuatro" jugadores opcion 4
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: cantidad de jugadores 4
        Given estoy en la pagina modalidad
        When selecciono "cuatro" jugadores opcion 4
        Then se ve "4 jugadores" seleccionado

    Scenario: ingresar nombres de jugadores
        Given estoy en la pagina modalidad
        When selecciono "cuatro" jugadores opcion 4
        Then me pide que ingrese los nombres de los 4 jugadores "fourPlayersName"
        And deberia ver el boton "Empezar partida"
