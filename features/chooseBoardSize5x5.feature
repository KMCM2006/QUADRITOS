Feature: Elegir el tamaho 5x5 del tablero
    Como jugador
    Quiero elegir jugar partida del tamaho 5x5 del tablero
    Para jugar en un tablero de 5x5 de tamaho
        
   Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono "5x5" tamaho de tablero opcion 2
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono "5x5" tamaho de tablero opcion 2
        Then deberia ver el nombre del jugador "GoDiegoGo"

   Scenario: tamaño elegido en la pantalla
        Given estoy en la pagina modalidad
        When selecciono "5x5" tamaho de tablero opcion 2
        Then deberia mostrar "5x5" seleccionado
        And deberia ver el boton "Empezar partida"