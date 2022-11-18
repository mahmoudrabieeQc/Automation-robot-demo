*** Settings ***
Documentation  user can  Search for product

Resource  ../Resources/Common.robot  # for Setup & Teardown
Resource  ../Data/InputData.robot
Resource  ../Resources/ecommerceApp.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Test Cases ***
user can search for NIKE
    [Tags]  Add To Wishlist   functional  regresion
     ecommerceApp."Login" Page
    ecommerceApp."Search For Nike" page




