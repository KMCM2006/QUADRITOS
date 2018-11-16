Feature: Ver reglas del juego
    Como jugador
    Quiero ver las reglas del juego
    Para saber como jugarlo

    Scenario: reglas en la pantalla modalidades
        Given estoy en la pagina modalidad
        When oprimo la opcion ver reglas
        Then deberia ver un modal con las reglas en la pantalla

    Scenario: reglas en la patalla juego
        Given estoy en la pagina de jugar
        When oprimo la opcion ver reglas
        Then deberia ver un modal con las reglas en la pantalla
