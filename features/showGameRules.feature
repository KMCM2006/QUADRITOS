Feature: Ver reglas del juego
    Como jugador
    Quiero ver las reglas del juego
    Para saber como jugarlo

    Scenario: reglas
        Given estoy en la pagina modalidad
        When oprimo la opcion ver reglas
        Then deberia ver un modal con las reglas en la pantalla
