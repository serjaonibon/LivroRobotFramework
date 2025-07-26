*** Settings ***
Documentation    Project global definictions.

Library          SeleniumLibrary

*** Variables ***
${BROWSER}                             chrome
${URL}                                 http://localhost:5173
${TIMEOUT_1}                           1s
${TIMEOUT_2}                           2s
${TIMEOUT_5}                           5s
${MY_ACCOUNT_BUTTON}                   //a[text()='Minha conta']
${NAME_TEXT_FIELD}                     id: register-name
${EMAIL_TEXT_FIELD}                    id: register-mail
${PASS_TEXT_FIELD}                     id: register-pass
${CONFIRM_PASS_TEXT_FIELD}             id: register-confirm-pass
${BUSINESS_ENTITY_COMBOBOX}            id: register-user-type
${TERMS_OF_USE_CHECKBOX}               id: terms-of-use
${REGISTER_BUTTON}                     //input[@id="submit-register"]
${MY_WYSH_LIST_LINK}                   /my-wish-list
${MY_ORDERS_LINK}                      /my-orders
${MY_INVOICES_LINK}                    /my-invoices


