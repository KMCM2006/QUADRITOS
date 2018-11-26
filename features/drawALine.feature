Feature: Realizar jugada
    Como jugador
    Quiero realizar una jugada
    Para estar mas cerca de formar un cuadrado

    Scenario: Dibujar linea
    Given visito la pagina del juego con "2" jugadores
    When selecciono la linea con orientacion "H" con las posiciones "300", "350", "50", "50"
    Then la linea con orientacion "H" con las posiciones "300", "350", "50", "50" deberia hacerse visible