
Feature: API Testing for App Conduit
  I want to use this template for my feature file

Background: Login
Given headers {Content-Type:"application/json", Accept: "*/*"} 
Given url "https://api.realworld.io/api/"
 Given path "users/login"
  When request {"user": {"email": "cb.sudha@gmail.com","password": "password"}}
  When method post
  Then status 200
  * def token = response.user.token
  And print token
  Given header Authorization = "Token " + token

  
  #Scenario: Login 
  #Given header Content-Type = "application/json"
  #And header Accept = "*/*"
  #Given headers {Content-Type:"application/json", Accept: "*/*"}
  #Given path "users/login"
  #When request {"user": {"email": "cb.sudha@gmail.com","password": "password"}}
  #When method post
  #Then status 200
  #* def token = response.user.token
  #And print token
  
  Scenario: Post
  #Given header Authorization = "Token " + token
  Given path "articles"
  Given request {"article": {"title": "NewArticle5Karate","description": "NewArticle","body": "Testing","tagList": []}}
  When method post
  Then status 201
  * def articleID = response.article.slug
  And print articleID
  And articleidss = articleID
  
  #Scenario: Delete
  #Given header Authorization = "Token " + token
  #* def delurl = "https://api.realworld.io/api/articles/" + articleID
  #Given url delurl
  #Given path "articles", articleidss
  #When method delete
  #Then status 204
  #
  @DEBUG
  Scenario: Post debug tag
  #Given header Authorization = "Token " + token
  Given path "articles"
  Given request {"article": {"title": "NewArticle5Karate","description": "NewArticle","body": "Testing","tagList": []}}
  When method post
  Then status 201
  
  
  
  