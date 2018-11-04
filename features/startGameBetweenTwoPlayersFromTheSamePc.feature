Feature: Iniciar partida entre dos jugadores desde la misma PC
    Como jugador
    Quiero iniciar partida contra otro jugador desde la misma PC
    Para ver quien es mejor

    Scenario: Iniciar partida
    Given visito la pagina del juego
    Then se ve el nombre del "Jugador 1"
    And se ve el nombre del "Jugador 2"
    And se ve el logo del juego
    And se ve el puntaje de "Jugador 1" inicializado en 0
    And se ve el puntaje de "Jugador 2" inicializado en 0
    And se ve la opcion de "Configuraciones"
    And se ve el tablero vacio