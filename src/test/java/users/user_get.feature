Feature: Get user via GET in API automationexercise.com

    Background:
        * url baseUrl
        * def get_user_request = 
        """
        {
            "email": "MatiasNunezTest@gmail.com"
        }
        """
    Scenario: Obtener usuario por email
        Given path '/getUserDetailByEmail'
        And param email = get_user_request.email
        When method GET
        Then status 200
        * def expectedCode = 200
        And match response.responseCode == expectedCode
