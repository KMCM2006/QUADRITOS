Feature: Ver modalidades
    Como jugador
    Quiero ver todas las modalidades disponibles del juego
    Para elegir la que mas me guste

    Scenario: logo del juego
        Given visito la pagina modalidad
        Then deberia ver el logo del juego en la ventana para elegir la modalidad
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        Then deberia ver el nombre del jugador "GoDiegoGo"

    Scenario: mensaje elige modalidad
        Given visito la pagina modalidad
        Then deberia ver un mensaje "Elige una modalidad para comenzar a jugar"

    Scenario: opcion oponentes desde la misma PC
        Given visito la pagina modalidad
        Then deberia ver primera opcion "Oponentes desde la misma PC"

    Scenario: opcion oponentes desde distinta PC
        Given visito la pagina modalidad
        Then deberia ver segunda opcion "Oponentes desde distinta PC"

    Scenario: jugar contra la PC
        Given visito la pagina modalidad
        Then deberia ver tercera opcion "Jugar contra la PC"