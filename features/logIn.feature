Feature: Iniciar sesion
    Como jugador
    Quiero iniciar sesion
    Para poder reconocerme

    Scenario: Iniciar con mi correo y password
        Given visito la pagina principal
        When selecciono la opcion de Iniciar Sesion
        Then deberia mostrarme el mensaje "Iniciar Sesion" en la pagina de "Login"
        And ingrese el nombre "Lupita" en el campo "user"
        And ingreso la contraseña "123" en el campo "password"