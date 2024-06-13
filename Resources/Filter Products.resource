*** Settings ***
Library    SeleniumLibrary
Library    Collections



*** Variables ***
  



*** Keywords ***
Apply Filter
    [Documentation]
    [Arguments]    ${label}
    Maximize Browser Window
    Wait Until Element Is Visible    //select[@class="product_sort_container"]
    Click Element    //select[@class="product_sort_container"]
    Select From List By Label    //select[@class="product_sort_container"]    ${label}
    Wait Until Page Contains Element    //div[@class="inventory_list"]

Get Dropdown Items
    ${options}=    Get WebElements    //div[@class="inventory_list"]
    ${items}=    Create List
    FOR    ${option}    IN    @{options}
        ${text}=    Get Text    ${option}
        Append To List    ${items}    ${text}
    END
    [Return]    ${items}

Validate Items Are Sorted Alphabetically
    [Arguments]    ${items}
    ${lowercase_items}=    Evaluate    [item.lower() for item in ${items}]
    ${sorted_items}=    Copy List    ${lowercase_items}
    Sort List    ${sorted_items}
    Should Be Equal    ${lowercase_items}    ${sorted_items}

              

