*** Settings ***
Documentation    this test cases for Amazon Website

Library     Selenium2Library     

*** Keywords ***
Begin Web Test
      Open Browser   about:blank  chrome
      
End Web Test
      Close Browser 
      
insert testing data 
    log  insert testing data
    
cleanup testing data
    log  cleanup testing data