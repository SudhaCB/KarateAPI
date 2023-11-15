Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseUrl

  Scenario: get all users and then get the first user by id
    * print baseUrl
    Given path 'users'
    When method get
    Then status 200
    * def first = response[0]
    Given path 'users', first.id
    When method get
    Then status 200

  Scenario: create a user and then get it by id
    * def user =
      """
      {
        "name": "Test User2",
        "username": "testuser2",
        "email": "test@user2.com",
        "address": {
          "street": "Has No Name",
          "suite": "Apt. 123",
          "city": "Electri",
          "zipcode": "54321-6789"
        }
      }
      """

    Given path 'users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ', id


#    Given path 'users', id
#     When method get
#     Then status 200
#     And match response contains user
  