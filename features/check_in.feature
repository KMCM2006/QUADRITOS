Feature: Registrarse
    Como jugador
    Quiero poder registrarme con mi nombre y correo
    Para poder acceder a ella.

    Scenario: Registrarse con los datos minimos
        Given visito la pagina registrarse
        Then deberia mostrar un mensaje "Se registro correctamente"
        And deberia ver el nombre del jugador "pepe".
        And deberia ver el logo del juego en la barra de navegacion.
        And deberia mostrar el boton "registrarse"
