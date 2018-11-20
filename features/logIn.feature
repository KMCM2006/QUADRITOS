Feature: Iniciar sesion
    Como jugador
    Quiero iniciar sesion
    Para poder reconocerme

    Scenario: Iniciar con mi correo y password
        Given visito la pagina inicia sesion
        Then deberia mostrar el logo del juego en la barra de navegacion
        And deberia ver el boton "iniciar"