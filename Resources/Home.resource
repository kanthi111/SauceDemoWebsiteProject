*** Settings ***
Library    SeleniumLibrary
Library    Collections



*** Variables ***
&{PRODUCTS}
...    LABEL_PRODUCT_NAME=//*[@class="inventory_container"]//a//div    



*** Keywords ***
Navigate To Each Product Name Of Application
    Wait Until Element Is Visible    ${PRODUCTS}[LABEL_PRODUCT_NAME]
    ${labels}=    Get WebElements    ${PRODUCTS}[LABEL_PRODUCT_NAME]   # Get all <label> elements
    ${texts}=    Create List
    FOR    ${label}    IN    @{labels}
        ${text}=    Get Text    ${label}
        Append To List    ${texts}    ${text}
    END
    FOR    ${text}    IN    @{texts}
        Log    Clicking link with label text: ${text}
        Click Link    ${text}
        Go Back
        Wait Until Page Contains Element    ${PRODUCTS}[LABEL_PRODUCT_NAME]
    END
