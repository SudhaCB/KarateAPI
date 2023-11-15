
Feature: Demo

  Scenario: Manipulating JSOn
  Given def myObject = 
"""  
{ 
   "name": "jack", 
   "phone" : 15435667788 
} 

""" 
* print myObject.name, baseUrlnew, myVarNamenew

  
  
  Scenario: Demo2  
    Given def jsonObject = 
""" 
[ 
{ 
   "name": "jack", 
   "phone" : 15435667788 
}, 
{ 
   "name": "jennie", 
   "phone" : 13443567234 
} 
] 
""" 
* print jsonObject[1].name, jsonObject[1].phone

  Scenario: Get all tags
  Given params { limit: 4, offset: 0}
        Given url 'https://conduit.productionready.io/api/tags'
        When method Get
        Then status 200
        Then match response.tags[0] == "welcome"
        
         Scenario: Get 10 articles from the page
        Given params { limit: 10, offset: 10}
        Given url 'https://conduit.productionready.io/api/articles'
        When method Get
        Then status 200