*** Settings ***
Resource  ./PO/HomePage.robot
Resource  ./PO/Register.robot
Resource  ./PO/Login.robot
Resource  ./PO/AddProductCart.robot
Resource  ./PO/SearchForNike.robot
Resource  ./PO/checkoutPo.robot

*** Keywords ***
"Registeration" Page
    Common.Load
    HomePage.Verify Page Loaded
    HomePage.Register
  Register.Fill Personal Details


"Login" Page
    Common.Load
    HomePage.Click to Login Link
    Login.Enter your "Email"
    Login.Enter your "Password"
    Login.Submit
#    Login.Verify Page Loaded
#    HomePage.Logout
#    HomePage.Verify Page Loaded

"Add Cart" to product
    Common.Load
#    HomePage.Enter "First Product Name"
#    Set Log Level  DEBUG
#    Set Log Level  INFO
    AddProductCart.Add product to my cart
    Set Log Level  TRACE
    ${ReturnedInfo} =  AddProductCart.Verify Page Loaded
    Log  ${ReturnedInfo}
"checkoutPo" Page
  checkoutPo.User Can Checkout


 "SearchForNike" Page
    SearchForNike.Search for product

