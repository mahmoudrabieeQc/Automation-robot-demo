*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${men_link_variable}           xpath =(//span[contains(text(),'Men')])[1]
 #xpath =//a[@id='ui-id-5'])
#xpath =(//a[@id='ui-id-5'])[1]
# xpath= //a[@id='ui-id-5']
# xpath =//a[@id='ui-id-5']//span[@class='ui-menu-icon ui-icon ui-icon-carat-1-e']
${navigate_to_tops} =           xpath=(//a[@id='ui-id-17'])[1]
${navigate_to_jacket} =         xpath=(//a[@id='ui-id-19'])[1]
${navigate_to_2ndjacket_photo}  xpath =(//img[@alt='Montana Wind Jacket'])[2]
#//img[@alt='Montana Wind Jacket']
##xpath=(//a[@id='ui-id-19'])[1]

${select-size}                  xpath=//div[@id='option-label-size-143-item-166']
${select-color}                 xpath=//div[@id='option-label-color-93-item-49']
${add-to-cart} =                xpath=//button[@id='product-addtocart-button']
#${update_shopping_cart} =           xpath=//input[@name="updatecart"]

*** Keywords ***
Add product to my cart

     Mouse Up  ${men_link_variable}
    Wait Until Element Is Visible    ${navigate_to_tops}
     Mouse Over  ${navigate_to_tops}
    
     Click Link  ${navigate_to_jacket}
    
     Click Image   ${navigate_to_2ndjacket_photo}
     
     Click Element    ${select-size}
     
     Click Element    ${select-color}
    

  Click Button  ${add-to-cart}
  Sleep    3s

