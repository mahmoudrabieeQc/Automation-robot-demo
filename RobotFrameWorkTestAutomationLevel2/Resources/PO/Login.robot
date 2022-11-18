*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email_variable-login} =             id=email
${password_variable-login} =          id=pass
${submit_button_variable-login} =     xpath=//fieldset[@class='fieldset login']//button[@id='send2']
*** Keywords ***
Enter your "Email"
    Input Text  ${email_variable-login}  ${typing_email}
    Sleep  1s
Enter your "Password"
    Input Text  ${password_variable-login}  ${typing_password}
    Sleep  1s
Submit

    Click Button  ${submit_button_variable-login}
    Sleep  4s
#Verify Page Loaded
#    Wait Until Page Contains  My account