*** Settings ***
Library    ../.venv/Lib/site-packages/SeleniumLibrary/__init__.py

Resource    ../resource/config.resource
Resource    ../resource/page_objects/account_page_object.resource    
Resource    ../resource/page_objects/register_page_object.resource
Resource    ../resource/page_objects/menu_page_object.resource

*** Test Cases ***
Scenario: Success sign in as Natural Person
    Given I am on Bookstore Demo we site
    And I go to log in or sign in page
    When I fill ferister form
    And I accept the terms of use
    And I submit register form
    Then I should see a success message
    And I should see My Wish List
    And I should see My Orders


*** Keywords ***
I am on Bookstore Demo we site
    Title Should Be    Bookstore Demo

I go to log in or sign in page
    Click Link                    ${MY_ACCOUNT_BUTTON}

I fill ferister form
    Input Text                    ${NAME_TEXT_FIELD}                        Lorem ipsum
    Input Text                    ${EMAIL_TEXT_FIELD}                       lorem@ipsum.com
    Input Password                ${PASS_TEXT_FIELD}                        foo123
    Input Password                ${CONFIRM_PASS_TEXT_FIELD}                foo123
    Select From List By Label     ${BUSINESS_ENTITY_COMBOBOX}               Pessoa Física

I accept the terms of use
    Select Checkbox              ${TERMS_OF_USE_CHECKBOX}

I submit register form
    Submit Form                  ${REGISTER_BUTTON}        

I should see a success message
    Wait Until Page Contains    Lorem ipsum, teu cadastro foi realizado com sucesso!

I should see My orders
    Page Should Contain Link    ${MY_ORDERS_LINK}

I should see My Wish List
    Page Should Contain Link    ${MY_WYSH_LIST_LINK}            