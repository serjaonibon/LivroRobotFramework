*** Settings ***
Library    SeleniumLibrary

Resource    ../resource/page_objects/register_page_object.resource
Resource    ../resource/page_objects/account_page_object.resource
Resource    ../resource/page_objects/menu_page_object.resource

*** Keywords ***
I fill register form
    input text                    ${NAME_TEXT_FIELD}                     Lorem ipsum
    input text                    ${EMAIL_TEXT_FIELD}                    lorem@ipsum.
    input password                ${PASS_TEXT_FIELD}                     foo123
    input password                ${CONFIRM_PASS_TEXT_FIELD}             foo123
    select from list by label     ${BUSINESS_ENTITY_COMBOBOX}            Pessoa Física

 I accept the terms of use
    select checkbox               ${TERMS_OF_USE_CHECKBOX}

I submit register form
    submit form                    ${REGISTER_BUTTON}

I should see a success message
    wait until page contains       Lorem ipsum, teu cadastro foi realizado com sucesso!        