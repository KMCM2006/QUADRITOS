Feature: Elegir jugar entre 3 jugadores
    Como jugador
    Quiero elegir jugar partida entre 3 jugadores
    Para jugar contra dos oponentes

    Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono "tres" jugadores opcion 3
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono "tres" jugadores opcion 3
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: cantidad de jugadores 3
        Given estoy en la pagina modalidad
        When selecciono "tres" jugadores opcion 3
        Then se ve "3 jugadores" seleccionado

    Scenario: ingresar nombres de jugadores
        Given estoy en la pagina modalidad
        When selecciono "tres" jugadores opcion 3
        Then me pide que ingrese los nombres de los 3 jugadores "threePlayersName"
        