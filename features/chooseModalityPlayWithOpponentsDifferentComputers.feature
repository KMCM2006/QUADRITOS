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

    Scenario: modalidad jugar contra oponentes desde distintas PCs
        Given estoy en la pagina modalidad
        When selecciono modalidad "jugar contra oponentes desde distintas PCs" Opcion 2
        Then se ve la opcion "Oponentes desde distinta PC" seleccionada

    Scenario: ver opcion elegir cantidad de jugadores
        Given estoy en la pagina modalidad
        Then se ve la opcion para elegir la cantidad de jugadores

    Scenario: ver boton de empezar la partida
        Given visito la pagina modalidad
        Then deberia ver el  boton "Empezar partida"