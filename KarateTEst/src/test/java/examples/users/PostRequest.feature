Feature: Get Employees
#Scenario: Get the information of all the employees
#Given url 'http://dummy.restapiexample.com/api/v1/employees'
#When method get
#Then status 200
#And print 'Response is: ', response
#And match response contains {"id": "1","employee_name": "Wadkar Performance","employee_salary": "700000","employee_age": "29","profile_image": ""}


Scenario: Verify that a new employee is successfully getting created
Given url 'https://dummy.restapiexample.com/api/v1/create'
When request {"name":"test","salary":"123","age":"23"}
And method post
Then status 200
And print 'Response is: ', response
#And match response == 
#"""
#{
    #"status": "success",
    #"data": {
        #"name": "test",
        #"salary": "123",
        #"age": "23",
        #"id": 6538
    #},
    #"message": "Successfully! Record has been added."
#}
#"""