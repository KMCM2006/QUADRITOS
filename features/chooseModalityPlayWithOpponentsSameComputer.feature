Feature: Elegir modalidad jugar contra oponentes desde la misma PC
    Como jugador
    Quiero elegir la modalidad jugar contra oponentes desde la misma PC
    Para jugar con las personas que me rodean

    Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono modalidad "jugar contra oponentes desde la misma PC" Opcion 2
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono modalidad "jugar contra oponentes desde la misma PC" Opcion 2
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: modalidad jugar contra oponentes desde la misma PC
        Given estoy en la pagina modalidad
        When selecciono modalidad "jugar contra oponentes desde la misma PC" Opcion 2
        Then se ve la opcion "Oponentes desde la misma PC" seleccionada

    Scenario: ver opcion elegir cantidad de jugadores
        Given estoy en la pagina modalidad
        When selecciono modalidad "jugar contra oponentes desde la misma PC" Opcion 2
        Then se ve la opcion para elegir la cantidad de jugadores

