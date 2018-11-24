Feature: Guardar puntaje final
    Como jugador
    Quiero guardar el puntaje final
    Para verlo en el ranking de puntajes

    Scenario: Guardar puntaje final del mejor jugador
    Given visito la pagina del juego con "2" jugadores
    When se marcan todas las casillas en el tablero
    Then deberia verse el mensaje "Se guardo el puntaje del ganador"