Feature: Elegir modalidad jugar contra oponentes desde distinta PC
    Como jugador
    Quiero elegir la modalidad jugar contra oponentes desde la misma PC
    Para jugar con las personas que me rodean

    Scenario: logo del juego
        Given visito la pagina modalidad
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: ver opcion elegir cantidad de jugadores
        Given estoy en la pagina modalidad
        When selecciono la opcion jugar contra Oponentes desde distinta PC
        Then se hace visible la opcion para elegir la cantidad de jugadores

    Scenario: ver boton de empezar la partida
        Given visito la pagina modalidad
        Then deberia ver el  boton "Empezar partida"