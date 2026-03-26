Feature: Update user via PUT in API automationexercise.com

    Background:
        * url baseUrl
        * def update_user_request = 
        """
        {
            "name": "Matias update",
            "email": "MatiasNunezTest@gmail.com",
            "password": "Matias123",
            "title": "Mr",
            "birth_date": "19",
            "birth_month": "12",
            "birth_year": "1997",
            "firstname": "Matias",
            "lastname": "Nunez",
            "country": "Argentina",
            "zipcode": "3283",
            "state": "Entre Rios",
            "city": "San Jose",
            "mobile_number": "3447566156",
            "address1": "Calle Falsa 123"
        }
        """
    Scenario: Actualizar usuario
        Given path '/updateAccount'
        And form field name = update_user_request.name
        And form field email = update_user_request.email
        And form field password = update_user_request.password
        And form field title = update_user_request.title
        And form field birth_date = update_user_request.birth_date
        And form field birth_month = update_user_request.birth_month
        And form field birth_year = update_user_request.birth_year
        And form field firstname = update_user_request.firstname
        And form field lastname = update_user_request.lastname
        And form field country = update_user_request.country
        And form field zipcode = update_user_request.zipcode
        And form field state = update_user_request.state
        And form field city = update_user_request.city
        And form field mobile_number = update_user_request.mobile_number
        And form field address1 = update_user_request.address1
        When method PUT
        Then status 200
        * def expectedMessage = 'User updated!'
        And match response.message == expectedMessage
