Feature: Ver mejores puntajes
    Como jugador
    Quiero ver los mejores puntajes del juego
    Para saber si estoy entre ellos

Scenario: Mejores puntajes
    Given visito la pagina mejores puntajes
    Then deberia ver logo del juego
    And deberia ver el nombre jugador
    And deberia ver el enlace "Pagina principal"
    And deberia ver una tabla con el titulo "Mejores puntajes"