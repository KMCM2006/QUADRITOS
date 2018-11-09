Feature: Reiniciar partida
    Como jugador
    Quiero reiniciar la partida
    Para comenzar de nuevo la partida

    Scenario: Reiniciar partida actual
    Given estoy en la pagina de jugar
    When presiono el boton "Reiniciar"
    Then mi puntaje deberia estar en 0