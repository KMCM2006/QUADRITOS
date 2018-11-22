Feature: Registrarse
    Como jugador
    Quiero poder registrarme con mi nombre y correo
    Para poder acceder a ella.

    Scenario: Registrarse con los datos minimos
        Given visito la pagina principal
        When selecciono la opcion de Registrarse
        Then deberia mostrarme el mensaje "Registrarse" en la pagina de "register"
        And ingrese el nombre "Lupita" en el campo "user"
        And ingreso la contraseña "123" en el campo "password"
        And ingreso la confrimarcion de contraseña "123" en el campo "confirmPassword"
