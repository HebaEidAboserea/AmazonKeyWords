*** Settings ***
Documentation    this test cases for Amazon Website

Library     Selenium2Library  

*** Keywords ***

    
search for product
     Go To    https://www.amazon.com/
     Maximize Browser Window
     Wait Until Page Contains    amazon  
     Input Text    id:twotabsearchtextbox    huawei p30 pro 
     Click Button    id:nav-search-submit-button  
     Wait Until Page Contains    results for "huawei p30 pro"
select product from search results
    Click Image    xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img  
    Wait Until Page Contains   huawei
    
add product to Cart
     Click Button    id:add-to-cart-button 
     Wait Until Page Contains    Added to Cart 
    
Begin checkout process
     Click link    id:hlb-ptc-btn-native
     Wait Until Page Contains    Sign-In


