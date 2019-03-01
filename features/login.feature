Feature: Login into losestudiantes
    As an user I want to authenticate myself within losestudiantes website in order to rate teachers

Scenario Outline: Login failed with wrong inputs

  Given I go to losestudiantes home screen
    When I open the login screen
    And I fill with <email> and <password>
    And I try to login
    Then I expect to see <error>

    Examples:
      | email            | password | error                    |
      |                  |          | Ingresa una contraseña   |
      | miso@gmail.com   |    1234  | Upss! El correo y        |


Scenario Outline: Login sucess with corect inputs

  Given I go to losestudiantes home screen
    When I open the login screen
    And I fill sucess with <email> and <password>
    And I try to login
    Then I expect to be able to login sucess

    Examples:
      | email                          | password     |
      | captuayonovoafredy@gmail.com   |    1234567890|


Scenario Outline: Register sucess with corect inputs

  Given I go to losestudiantes home screen
    When I open the login screen
    And I fill register with <name> and <lastname>
    And I try to register
    Then I expect to be able to register sucess

    Examples:
      | name                          | lastname     |
      | fredy   					  |    1234567890|