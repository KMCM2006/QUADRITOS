Feature: Ver modalidades
    Como jugador
    Quiero ver todas las modalidades disponibles del juego
    Para elegir la que mas me guste

    Scenario: logo del juego
        Given visito la pagina modalidad
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: mensaje elige modalidad
        Given visito la pagina modalidad
        Then deberia ver un mensaje "Elige una modalidad para comenzar a jugar"

    Scenario: opcion oponentes desde la misma PC
        Given visito la pagina modalidad
        Then deberia ver primera opcion "Oponentes desde la misma PC"

    Scenario: reglas
        Given visito la pagina modalidad
        Then deberia ver una opcion que muestre "Ver reglas"
