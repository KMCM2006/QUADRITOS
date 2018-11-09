Feature: Ingresar los nombres de los jugadores
    Como jugador
    Quiero ingresar los nombres de los jugadores
    Para personalizar el juego

    Scenario: ingresar nombres de 2 jugadores
        Given estoy en la pagina modalidad
        When selecciono "dos" jugadores opcion 2
        And ingreso el nombre de los 2 jugadores
        Then deberia ver el  boton "Empezar partida"

    Scenario: ingresar nombres de 3 jugadores
        Given estoy en la pagina modalidad
        When selecciono "tres" jugadores opcion 3
        And ingreso el nombre de los 3 jugadores
        Then deberia ver el  boton "Empezar partida"

    Scenario: ingresar nombres de 4 jugadores
        Given estoy en la pagina modalidad
        When selecciono "cuatro" jugadores opcion 4
        And ingreso el nombre de los 4 jugadores
        Then deberia ver el  boton "Empezar partida"
