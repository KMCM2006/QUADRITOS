Feature: Empezar nueva partida
    Como jugador
    Quiero comenzar una nueva partida
    Para seguir jugando con mi adversario(s)

    Scenario: Empezar una nueva partida
    Given estoy en la pagina de jugar
    When presiono el boton "Nueva"
    Then deberia ver el mensaje "Modalidades"