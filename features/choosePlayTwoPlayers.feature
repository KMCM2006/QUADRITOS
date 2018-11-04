Feature: Elegir jugar entre 2 jugadores
    Como jugador
    Quiero elegir jugar partida entre 2 jugadores
    Para jugar contra un oponente

    Scenario: logo del juego
        Given visito la pagina modalidad
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: cantidad de jugadores 2
        Given estoy en la pagina modalidad
        When selecciono "dos" jugadores opcion 1
        Then se ve "2 jugadores" seleccionado

    Scenario: ver boton de empezar la partida
        Given visito la pagina modalidad
        Then deberia ver el  boton "Empezar partida"