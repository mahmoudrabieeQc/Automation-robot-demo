*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${register_link_variable} =     xpath=//div[@class='panel header']//a[normalize-space()='Create an Account']
${logout_link_variable} =       xpath=//a[contains(.,"Log out")]
${login_link_variable} =        xpath=//div[@class='panel header']//a[contains(text(),'Sign In')]

*** Keywords ***
Register
    Click Link  ${register_link_variable}
    Sleep  2s
Verify Page Loaded
    Wait Until Page Contains  Default welcome msg!
    Sleep  2s
#Logout
#    Click Link  ${logout_link_variable}
#    Sleep  2s
Click to Login Link
    Click Link  ${login_link_variable}
    Sleep  3s

