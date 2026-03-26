Feature: Delete user via DELETE in API automationexercise.com

    Background:
        * url baseUrl
        * def delete_user_request = 
        """
        {
            "email": "MatiasNunezTest@gmail.com",
            "password": "Matias123"
        }
            
        """
    Scenario: Eliminar usuario
        Given path '/deleteAccount'
        And form field email = delete_user_request.email
        And form field password = delete_user_request.password
        When method DELETE
        Then status 200
        And match response.message == 'Account deleted!'
