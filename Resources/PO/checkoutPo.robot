*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${checkout_bike} =         xpath=//a[@class='action showcart active']
${checkout_bike}=             css =.action.showcart
#(//a[@class='action showcart active'])[1]
#//a[@class='action showcart active']
${procees_to_check_out}=     xpath=//button[@id='top-cart-btn-checkout']
#${company_name_txt}=         id= ITJWJWJ
${company_name_txt}=          name=company
${city_name_txt}=             name=city
${Address_txt}=               name =street[0]
${state_menu}=                name =region_id
${ZipCode_txt}=               name =postcode
${country_menu}=              name =country_id
${phone_number_text}=         name=telephone
${next_btn}=                  xpath=//button[@class='button action continue primary']


*** Keywords ***
 User Can Checkout
#    Mouse Over    ${checkout_bike}
#    Sleep  2s
    Click Element    ${checkout_bike}
    Wait Until Element Is Visible    ${procees_to_check_out}
    
    Click Button    ${procees_to_check_out}
    Wait Until Element Is Visible    ${company_name_txt}

    Input Text    ${company_name_txt}    ${typing_company_name}
    Sleep    1s
    Input Text    ${Address_txt}   ${typing_new_address}

      Sleep    1s
     Input Text    ${city_name_txt}   ${typing_city}
    
    Sleep    1s
    Click Element  ${state_menu}
    Sleep    1s
    Select From List By Index    ${state_menu}  1
    Sleep    1s
    Input Text    ${ZipCode_txt}   ${typing_zip}
    
    Sleep    1s
    Click Element  ${country_menu}

     Sleep    1s
     Select From List By Index    ${country_menu}  1
    Sleep    1s
    Input Text    ${phone_number_text}   ${typing_phoneNumber}
  Sleep    2s
    Click Button    ${next_btn}
     Sleep    4s