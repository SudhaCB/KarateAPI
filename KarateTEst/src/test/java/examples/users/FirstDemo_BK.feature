Feature: FirstClass

Scenario: Demo

Given url "https://conduit.productionready.io/api/articles?limit=10&offset=0"
When method get
Then status 200 #assertion
And print response
And print response.articles[0]
And print response.articles[8].tagList
And print response.articles[0].author.username