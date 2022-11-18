*** Settings ***
Documentation  user can add products to my cart
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Data/InputData.robot
Resource  ../Resources/ecommerceApp.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test




*** Test Cases ***
User Add Products To "My Cart"
    [Tags]  Add Cart To Product  functional  regression
    ecommerceApp."Login" Page
    Sleep  2s
    ecommerceApp."Add Cart" to product
