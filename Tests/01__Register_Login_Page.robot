*** Settings ***
Documentation  User Can Register and Login
Resource  ../Data/InputData.robot
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Resources/ecommerceApp.robot    # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test



*** Test Cases ***

User Can "Register"
    [Tags]  Register  smoke  functional

    ecommerceApp."Registeration" Page

User Can "Login"
    [Tags]  Login    smoke  functional
    ecommerceApp."Login" Page
