Feature: Bienvenido
    Como Jugador
    Quiero Ingresar juego
    Para Jugar y demostrar lo bueno que soy

        Scenario: ver mensaje de bienvenida
        Given visito la pagina principal
        Then deberia ver el mensaje "Bienvenido"

        Scenario: ver logo del juego
        Given visito la pagina principal
        Then deberia ver el logo del juego en la ventana principal

        Scenario: ver el boton para iniciar partida
        Given visito la pagina principal
        Then deberia ver el boton "Iniciar Partida"