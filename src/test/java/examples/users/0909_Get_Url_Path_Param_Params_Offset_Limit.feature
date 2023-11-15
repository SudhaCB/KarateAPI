Feature: Get Demo

#Scenario: Test1
#
#Given url 'https://dummyjson.com/products?limit=5&offset=0'
#When method get
#* print response
#
#
#Scenario: Test2
#Given param limit = 5
#And param offset = 0
#Given url 'https://dummyjson.com'
#Then path 'products'
#When method get
#* print response
cd 1
And match response.products[0].id != 100
And match response.products[0].images contains only "https://i.dummyjson.com/data/products/1/1.jpg"

