*** Settings ***
Library    SeleniumLibrary

Resource    ../Configurations/Environment.resource  
Resource    ../Resources/Login.resource



Test Setup    Open Browser    ${url}    ${Browser}    Maximize Browser Window 
Test Teardown    Close Browser  

*** Test Cases ***
Login To SauceApplication
    [Documentation]
    Login To sauce
    Validate Home page
