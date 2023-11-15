Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url baseUrl
    * def userPayload = read('file:src/test/java/Resourses/user.json')
    * def randomString =
    """
    function(s){
    var text="";
    var pattern = "1234567890";
    for(var i=0; i<s; i++)
    text +=pattern.charAt(Math.floor(Math.random()*pattern.length()));
    return text;
    }
    """


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

    Given path 'users'
#    * def random = randomString(4)
#    * def name = "Test User"+random
    * print name
    * set userPayload.name = name
    * set userPayload.email = email
    * print userPayload
    And request userPayload
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ', id



#    Given path 'users', id
#     When method get
#     Then status 200
#     And match response contains user
  