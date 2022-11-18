*** Settings ***
Documentation  user can add products to my cart
Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Data/InputData.robot
Resource  ../Resources/ecommerceApp.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
# robot -d results/checkout tests/05__checkoutProduct.robot

*** Test Cases ***
User Can Checkout Product
    [Tags]  Checkout   functional  regresion
    ecommerceApp."Login" Page

    ecommerceApp."checkoutPo" Page

