
Feature: demo Post feature

Background: testing
* def requestpayload = read("input.json")
* def responsepayload = read("responsepayload.json")

Scenario: POST request
Given url "https://jsonplaceholder.typicode.com/users"
And request {"name": "Test User4", "username": "testuser2","email": "test@user2.com","address": {"street": "Has No Name","suite": "Apt. 123","city": "Electri", "zipcode": "54321-6789"}}
When method post
And status 201
And print response

Scenario: POST request by using json file
Given url "https://jsonplaceholder.typicode.com/users"
And request requestpayload
When method post
And status 201
And match response == responsepayload
And print response
