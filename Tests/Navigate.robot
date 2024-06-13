*** Settings ***
Library    SeleniumLibrary

Resource    ../Configurations/Environment.resource  
Resource    ../Resources/Login.resource
Resource    ../Resources/Home.resource



Test Setup    Open Browser    ${url}    ${Browser}    Maximize Browser Window 
Test Teardown    Close Browser  

*** Test Cases ***
Navigate To All Links In Application
    [Documentation]    user need to navigate to all Links
    Login To sauce
    Navigate To Each Product Name Of Application