Feature: Bienvenido
    Como estudiante
    Quiero ver un mensaje de bienvenida
    Para verificar si configure correctamente mi ambiente de desarrollo

    Scenario: mensaje de bienvenida
        Given visito la pagina principal
        Then deberia ver el mensaje "Bienvenido"
