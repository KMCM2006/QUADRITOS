Feature: Elegir modalidad jugar contra la PC
    Como jugador
    Quiero elegir la modalidad jugar contra la PC
    Para jugar contra la PC y ganarle

    Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono modalidad "jugar contra la PC" Opcion 3
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono modalidad "jugar contra la PC" Opcion 3
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: modalidad jugar contra la PC
        Given estoy en la pagina modalidad
        When selecciono modalidad "jugar contra la PC" Opcion 3
        Then se ve la opcion "Jugar contra la PC" seleccionada
