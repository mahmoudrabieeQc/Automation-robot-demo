*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${first_name_variable} =        id=firstname
${last_name_variable} =         id=lastname
${email_variable} =             id=email_address
${password_variable} =          id=password
${confirm_password_variable} =  id=password-confirmation
${register_button_variable} =   xpath=//button[@title='Create an Account']

*** Keywords ***
Fill Personal Details

    Input Text  ${first_name_variable}  ${typing_first_name}
    Sleep  1s
    Input Text  ${last_name_variable}  ${typing_second_name}
    Sleep  1s
    Input Text  ${email_variable}  ${typing_email}
    Sleep  1s
    Input Text  ${password_variable}  ${typing_password}
    Sleep  1s
    Input Text  ${confirm_password_variable}  ${typing_password}
    Sleep  1s
    Click Button  ${register_button_variable}
    Sleep  1s

