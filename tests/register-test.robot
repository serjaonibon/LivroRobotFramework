*** Settings ***
Documentation    Como cliente  da loja virtual, desejo criar um cadastro
...  no sistema para poder visualiozar meus pedidos e listas de desejo.
Library           SeleniumLibrary

Resource          ../resource/config.resource
Resource          ../resource/page_objects/account_page_object.resource
Resource          ../resource/page_objects/register_page_object.resource
Resource          ../resource/page_objects/menu_page_object.resource


Test Setup        Open Browser    ${URL}    ${BROWSER}
Test Teardown     Close Browser

*** Test Cases ***

Scenario: Sucess sign in as Natural Person
    [Tags]    Register Natural Person
    # Given Open Browser                ${URL}      ${BROWSER}   
    Maximize Browser Window
    Given Click Link                  ${MY_ACCOUNT_BUTTON}
    When Input Text                   ${NAME_TEXT_FIELD}                Lorem ipsum
    And Input Text                    ${EMAIL_TEXT_FIELD}               lorem@ipsum.com
    And Input Password                ${PASS_TEXT_FIELD}                foo123
    And Input Password                ${CONFIRM_PASS_TEXT_FIELD}        foo123
    And Select From List By Label     ${BUSINESS_ENTITY_COMBOBOX}       Pessoa Física
    And Select Checkbox               ${TERMS_OF_USE_CHECKBOX}
    And Click Element                 ${REGISTER_BUTTON} 
    Then Wait Until Page Contains     Lorem ipsum, teu cadastro foi realizado com sucesso!
    And Page Should Contain Link      ${MY_ORDERS_LINK} 
    And Page Should Contain Link      ${MY_WYSH_LIST_LINK}

Scenario: Sucess sign in as Juridical Person
    # Given Open Browser               ${URL}      ${BROWSER}  
    Maximize Browser Window
    Given Click Link                    ${MY_ACCOUNT_BUTTON}
    When Input Text                   ${NAME_TEXT_FIELD}                Lorem ipsum
    And Input Text                    ${EMAIL_TEXT_FIELD}               contato@loremipsum.com
    And Input Password                ${PASS_TEXT_FIELD}                54321
    And Input Password                ${CONFIRM_PASS_TEXT_FIELD}        54321
    And Select From List By Label     ${BUSINESS_ENTITY_COMBOBOX}       Pessoa Jurídica
    And Select Checkbox               ${TERMS_OF_USE_CHECKBOX}
    And Click Element                 ${REGISTER_BUTTON} 
    Then Wait Until Page Contains     Lorem ipsum, teu cadastro foi realizado com sucesso!
    And Page Should Contain Link      ${MY_ORDERS_LINK} 
    And Page Should Contain Link      ${MY_WYSH_LIST_LINK}








    # [Tags]    Register Juridical Person
    # Given Open Browser                browser=chrome 
    # And Go To                         url=http://localhost:5173/
    # And Maximize Browser Window
    # Sleep    2
    # And Click Link                    xpath=//a[text()='Minha conta']
    # When Input Text                   id: register-name                Lorem ipsum
    # And Input Text                    id: register-mail                contato@loremipsum.com
    # And Input Password                id: register-pass                54321
    # And Input Password                id: register-confirm-pass        54321
    # And Select From List By Label     id: register-user-type           Pessoa Jurídica
    # And Select Checkbox               id: terms-of-use
    # And Click Element                 xpath=//input[@id="submit-register"]
    # Then Wait Until Page Contains     Lorem ipsum, teu cadastro foi realizado com sucesso!
    # And Page Should Contain Link      /my-orders
    # And Page Should Contain Link      /my-invoices
    # And Page Should Contain Link      /my-invoices


    

