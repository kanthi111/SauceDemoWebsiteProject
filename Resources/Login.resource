*** Settings ***
Library    SeleniumLibrary



*** Variables ***




*** Keywords ***
Login To sauce
    [Documentation]    keyword for login
    Input Text    user-name    standard_user
    Input Password    password    secret_sauce
    Click Button    login-button

Validate Home page
    [Documentation]    
    Page Should Contain    Swag Labs
