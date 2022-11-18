*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text_variable} =       xpath=//input[@id='search']


*** Keywords ***
 Search for product
    Input Text  ${search_text_variable}    ${typing_nike}
    Sleep  2s
    Press Keys   ${search_text_variable}  ENTER
    Sleep  2s