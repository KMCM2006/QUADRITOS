Feature: Elegir el tamaho 9x9 del tablero
    Como jugador
    Quiero elegir jugar partida del tamaho 9x9 del tablero
    Para jugar en un tablero de 9x9 de tamaho
        
   Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono "9x9" tamaho de tablero opcion 4
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono "9x9" tamaho de tablero opcion 4
        Then deberia ver el nombre del jugador "GoDiegoGo"

   Scenario: tamaño elegido en la pantalla
        Given estoy en la pagina modalidad
        When selecciono "9x9" tamaho de tablero opcion 4
        Then deberia mostrar "9x9" seleccionado
        And deberia ver el boton "Empezar partida"