Feature: Editar datos de usuario
    Como jugador
    Quiero poder editar mi nombre de usuario
    Para poder sentirme mas comodo con el que tengo

    Scenario: Ingresar a editar datos
        Given visito la pagina editar datos
        Then deberia ver el logo del juego en la barra de navegacion.
        And deberia ver el titulo "Editar datos"
        And deberia ver un campo para ingresar mi nuevo nombre
        And deberia ver un campo para ingresar mi nueva contrasena
        And deberia ver un campo para confirmar mi contrasena
        And deberia ver el boton "Confirmar"

    Scenario: Ingreso nuevo nombre
        Given estoy en la pagina editar datos
        When ingreso mi nuevo nombre
        Then deberia ver mi nombre en el campo "nombre"

    Scenario: Ingreso nuevo nombre y nueva contrasena
        Given estoy en la pagina editar datos
        When ingreso mi nuevo nombre
        And ingreso mi contrasena
        Then deberia ver mi nuevo nombre "nombre" en el campo nombre
        And deberia ver mi nueva contrasena "contrasena" en el campo contrasena

    Scenario: Ingreso nuevo nombre, contrasena y contrasena de confirmacion
        Given estoy en la pagina editar datos
        When ingreso mi nuevo nombre
        And ingreso mi contrasena
        And confirmo mi contrasena
        Then deberia ver mi nuevo nombre "nombre" en el campo nombre
        And deberia ver mi nueva contrasena "contrasena" en el campo contrasena
        And deberia ver mi nueva contrasena "contrasena" en el campo confirmar contrasena

    Scenario: Confirmo mis nuevo datos
        Given estoy en la pagina editar datos
        When ingreso mi nuevo nombre
        And ingreso mi contrasena
        And confirmo mi contrasena
        And presiono el boton "Confirmar"
        Then deberia ver mi nuevo nombre "nombre" en el campo nombre
        And deberia ver mi nueva contrasena "contrasena" en el campo contrasena
        And deberia ver mi nueva contrasena "contrasena" en el campo confirmar contrasena
        And deberia enviarme a la pagina de elegir modalidad
