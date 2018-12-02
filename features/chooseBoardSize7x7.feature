Feature: Elegir el tamaho 7x7 del tablero
    Como jugador
    Quiero elegir jugar partida del tamaho 7x7 del tablero
    Para jugar en un tablero de 7x7 de tamaho
        
   Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono "7x7" tamaho de tablero opcion 3
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono "7x7" tamaho de tablero opcion 3
        Then deberia ver el nombre del jugador "GoDiegoGo"

   Scenario: tamaño elegido en la pantalla
        Given estoy en la pagina modalidad
        When selecciono "7x7" tamaho de tablero opcion 3
        Then deberia mostrar "7x7" seleccionado
        And deberia ver el boton "Empezar partida"