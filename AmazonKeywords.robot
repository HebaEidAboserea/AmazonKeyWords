

*** Settings ***
Resource  Resources/Amazon.robot
Resource  Resources/Common.robot
Documentation    this test cases for Amazon Website

Library     Selenium2Library 
Suite Setup    insert testing data 
Test Setup  Begin Web Test
Test Teardown  End Web Test       
Suite Teardown    cleanup testing data
*** Test Cases ***

user search for product 
     Amazon.search for product

user must signIn to checkout
    
    Amazon.search for product
    Amazon.select product from search results
    Amazon.add product to Cart
    Amazon.Begin checkout process
    

  
