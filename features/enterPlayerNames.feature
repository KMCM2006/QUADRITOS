Feature: Ingresar los nombres de los jugadores
    Como jugador
    Quiero ingresar los nombres de los jugadores
    Para personalizar el juego

    Scenario: ingresar nombres de 2 jugadores
        Given estoy en la pagina modalidad
        When selecciono "dos" jugadores opcion 2
        And ingreso los dos nombres "Andres" "Juan"
        Then deberia ver los dos nombres "Andres" "Juan"
        And deberia ver el boton "Empezar partida"
        


    Scenario: ingresar nombres de 3 jugadores
        Given estoy en la pagina modalidad
        When selecciono "tres" jugadores opcion 3
        And ingreso los tres nombres "Andres" "Juan" "Kevin"
        Then deberia ver los tres nombres "Andres" "Juan" "Kevin"
        And deberia ver el boton "Empezar partida"

    Scenario: ingresar nombres de 4 jugadores
        Given estoy en la pagina modalidad
        When selecciono "cuatro" jugadores opcion 4
        And ingreso los cuatro nombres "Andres " "Juan" "Kevin" "Maye"
        Then deberia ver los cuatro nombres "Andres " "Juan" "Kevin" "Maye"
        And deberia ver el boton "Empezar partida"
