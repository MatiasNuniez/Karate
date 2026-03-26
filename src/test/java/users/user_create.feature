Feature: Create user via POST in API automationexercise.com

    Background:
        * url baseUrl
        * def create_user_request = 
        """
        {
            "name": "Matias",
            "email": "MatiasNunezTest@gmail.com",
            "password": "Matias123",
            "title": "Mr",
            "birth_date": "18",
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
    Scenario: Crear usuario
        Given path '/createAccount'
        And form field name = create_user_request.name
        And form field email = create_user_request.email
        And form field password = create_user_request.password
        And form field title = create_user_request.title
        And form field birth_date = create_user_request.birth_date
        And form field birth_month = create_user_request.birth_month
        And form field birth_year = create_user_request.birth_year
        And form field firstname = create_user_request.firstname
        And form field lastname = create_user_request.lastname
        And form field country = create_user_request.country
        And form field zipcode = create_user_request.zipcode
        And form field state = create_user_request.state
        And form field city = create_user_request.city
        And form field mobile_number = create_user_request.mobile_number
        And form field address1 = create_user_request.address1
        When method POST
        Then status 200
        * def expectedCode = 201
        * def expectedMessage = 'User created!'
        And match response.responseCode == expectedCode
        And match response.message == expectedMessage
