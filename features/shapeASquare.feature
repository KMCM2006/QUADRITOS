Feature: Formar un cuadrado
    Como jugador
    Quiero formar un cuadrado
    Para ganar un punto

    Scenario: Formar un cuadrado
    Given visito la pagina del juego con "2" jugadores
    When selecciono la linea con orientacion "H" con las posiciones "300", "350", "50", "50"
    And selecciono la linea con orientacion "V" con las posiciones "300", "300", "50", "100"
    And selecciono la linea con orientacion "H" con las posiciones "300", "350", "100", "100"
    And selecciono la linea con orientacion "V" con las posiciones "350", "350", "50", "100"
    Then deberia desplegarse el mensaje "Enhorabuena"