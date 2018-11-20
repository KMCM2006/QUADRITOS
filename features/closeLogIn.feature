Feature: Cerrar Sesion
    Como jugador
    Quiero cerrar sesion
    Para despedirme del juego

    Scenario: Cerrar sesion 
    Given estoy en la pagina de jugar
    When presiono el boton "Cerrar Sesion"
    Then deberia ver el mensaje "Bienvenido"