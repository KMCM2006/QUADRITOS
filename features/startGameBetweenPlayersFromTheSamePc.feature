Feature: Iniciar partida con varios jugadores desde la misma PC
    Como jugador
    Quiero iniciar partida contra otro jugador desde la misma PC
    Para ver quien es mejor

    Scenario: Iniciar partida entre dos jugadores
    Given visito la pagina del juego con "2" jugadores
    Then se ve el logo del juego
    And se ve el nombre del "Jugador 1"
    And se ve el nombre del "Jugador 2"
    And se ve el puntaje de Jugador 1 inicializado en 0
    And se ve el puntaje de Jugador 2 inicializado en 0
    And se ve el avatar del Jugador 1
    And se ve el avatar del Jugador 2
    And se ve el tablero vacio

    Scenario: Iniciar partida entre tres jugadores
    Given visito la pagina del juego con "3" jugadores
    Then se ve el nombre del "Jugador 1"
    And se ve el nombre del "Jugador 2"
    And se ve el nombre del "Jugador 3"
    And se ve el logo del juego
    And se ve el puntaje de Jugador 1 inicializado en 0
    And se ve el puntaje de Jugador 2 inicializado en 0
    And se ve el puntaje de Jugador 3 inicializado en 0
    And se ve el tablero vacio

    Scenario: Iniciar partida entre cuatro jugadores
    Given visito la pagina del juego con "4" jugadores
    Then se ve el nombre del "Jugador 1"
    And se ve el nombre del "Jugador 2"
    And se ve el nombre del "Jugador 3"
    And se ve el nombre del "Jugador 4"
    And se ve el logo del juego
    And se ve el puntaje de Jugador 1 inicializado en 0
    And se ve el puntaje de Jugador 2 inicializado en 0
    And se ve el puntaje de Jugador 3 inicializado en 0
    And se ve el puntaje de Jugador 4 inicializado en 0
    And se ve el tablero vacio
