Feature: Get Demo

Background: 
Given url 'https://conduit.productionready.io/api/'
#
#Scenario: Get all Tags
#Given url 'https://conduit.productionready.io/api/tags'
#When method get
#Then status 200
#* print response
#
#
#Scenario: Get 10 articles
#Given param limlit = 10
#Given param offset = 0
#Given params {limit: 10, offset: 0}
#Given url 'https://conduit.productionready.io/api/articles'
#When method get
#Then status 200
#* print response

Scenario: Login
Given path 'users/login'
When request {"user": {"email": "cb.sudha@gmail.com","password": "password"}}
When method post
Then status 200
* print response
* def token = response.user.token



Given header Authorization = "Token " + token
And header Accept = "*/*"
And header Content-Type = "application/json"
Given url "https://api.realworld.io/api/articles"
And request {"article": {"title": "HHHH","description": "BBBBB","body": "CCCCC","tagList": []}}
When method post
Then status 201
And print response.article.slug
* def articleId = response.article.slug
And print articleId
And print "completed"

Given params {limit: 10, offset: 0}
Given url 'https://conduit.productionready.io/api/articles'
When method get
Then status 200
* print response
#And match response.articles[0].title == "GGGG"


Given header Authorization = "Token " + token
* def delUrl = "https://conduit.productionready.io/api/articles/" + articleId
Given url delUrl
When method delete
Then status 204







