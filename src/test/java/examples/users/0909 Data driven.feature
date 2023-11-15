
Feature: Testing Data driven
  
      
    #Scenario: Normal get method
    #Given url "https://dummyjson.com/products/2"
    #And method get
    #Then status 200
    #Then print response
    #
  #Scenario Outline: Get with DD Framework
    #Given url "https://dummyjson.com/products/<id>"
    #And method get
    #Then status 200
   #
    #Examples: 
      #| id |
      #| 1 |   
      #| 2 |  
      #| 3 |  
      #| 4 |  
      #| 5 |  
      #| 6 |  
      
       Scenario Outline: Get with DD Framework for title values
    Given url "https://dummyjson.com/products/1"
    And method get
    And print <names>
    Then status 200
   
    Examples: 
      | names |
      | "Sudha" |   
      | "Soundarya" |  
      | "Kavi" |  
      | "Siva" |  
     
          
  
   
   
   #
   