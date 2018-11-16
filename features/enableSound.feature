Feature: Activar sonido
    Como jugador
    Quiero activar el sonido
    Para que el juego sea mas divertido

    Scenario: sonido
        Given estoy en la pagina de jugar
        Then deberia ver un iframe de youtube
        And deberia comenzar a reproducirse automaticamente
        