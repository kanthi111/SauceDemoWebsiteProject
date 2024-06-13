*** Settings ***
Library    SeleniumLibrary

Resource    ../Configurations/Environment.resource  
Resource    ../Resources/Login.resource
Resource    ../Resources/Home.resource
Resource    ../Resources/Filter Products.resource



Test Setup    Open Browser    ${url}    ${Browser}
Test Teardown    Close Browser  

*** Test Cases ***
Filter Products
    [Documentation]
    Login To sauce
    Apply Filter    Name (A to Z)
    ${filtered_items}=    Get Dropdown Items
    Log To Console    Filtered Dropdown Items: ${filtered_items}
    Validate Items Are Sorted Alphabetically    ${filtered_items}