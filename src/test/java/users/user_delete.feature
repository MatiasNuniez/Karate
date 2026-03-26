Feature: Delete user via DELETE in API automationexercise.com

    Background:
        * url baseUrl
    Scenario: Eliminar usuario
        Given path '/deleteAccount'
        And form field email = 'MatiasNunezTest@gmail.com'
        And form field password = 'Matias123'
        When method DELETE
        Then status 200
        And match response.message == 'Account deleted!'
