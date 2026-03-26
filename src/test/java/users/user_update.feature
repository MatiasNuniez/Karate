Feature: Update user via PUT in API automationexercise.com

    Background:
        * url baseUrl
    Scenario: Actualizar usuario
        Given path '/updateAccount'
        And form field name = 'Matias update'
        And form field email = 'MatiasNunezTest@gmail.com'
        And form field password = 'Matias123'
        And form field title = 'Mr'
        And form field birth_date = '19'
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
        When method PUT
        Then status 200
        And match response.message == 'User updated!'
