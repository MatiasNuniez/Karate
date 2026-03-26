Feature: Create user via POST in API automationexercise.com

    Background:
        * url baseUrl
    Scenario: Crear usuario
        Given path '/createAccount'
        And form field name = 'Matias'
        And form field email = 'MatiasNunezTest@gmail.com'
        And form field password = 'Matias123'
        And form field title = 'Mr'
        And form field birth_date = '18'
        And form field birth_month = '12'
        And form field birth_year = '1997'
        And form field firstname = 'Matias'
        And form field lastname = 'Nunez'
        And form field country = 'Argentina'
        And form field zipcode = '3283'
        And form field state = 'Entre Rios'
        And form field city = 'San Jose'
        And form field mobile_number = '3447566156'
        And form field address1 = 'Calle Falsa 123'
        When method POST
        Then status 200
        And match response.responseCode == 201
        And match response.message == 'User created!'
