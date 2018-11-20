Feature: Elegir el tamaho 15x15 del tablero
    Como jugador
    Quiero elegir jugar partida del tamaho 15x15 del tablero
    Para jugar en un tablero de 15x15 de tamaho
        
   Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono "15x15" tamaho de tablero opcion 4
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono "15x15" tamaho de tablero opcion 4
        Then deberia ver el nombre del jugador "GoDiegoGo"

   Scenario: tamaño elegido en la pantalla
        Given estoy en la pagina modalidad
        When selecciono "15x15" tamaho de tablero opcion 4
        Then deberia mostrar "15x15" seleccionado
        And deberia ver el boton "Empezar partida"