Feature: Get user via GET in API automationexercise.com

    Background:
        * url baseUrl
    Scenario: Obtener usuario por email
        Given path '/getUserDetailByEmail'
        And param email = 'MatiasNunezTest@gmail.com'
        When method GET
        Then status 200
        And match response.responseCode == 200
