Feature: Elegir el tamaho 10x10 del tablero
    Como jugador
    Quiero elegir jugar partida del tamaho 10x10 del tablero
    Para jugar en un tablero de 10x10 de tamaho
        
   Scenario: logo del juego
        Given visito la pagina modalidad
        When selecciono "10x10" tamaho de tablero opcion 3
        Then deberia ver logo del juego
    
    Scenario: nombre del jugador
        Given visito la pagina modalidad
        When selecciono "10x10" tamaho de tablero opcion 3
        Then deberia ver el nombre del jugador "GoDiegoGo"

   Scenario: tamaño elegido en la pantalla
        Given estoy en la pagina modalidad
        When selecciono "10x10" tamaho de tablero opcion 3
        Then deberia mostrar "10x10" seleccionado
        And deberia ver el boton "Empezar partida"