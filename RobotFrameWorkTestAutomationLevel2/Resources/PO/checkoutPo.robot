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
    Sleep    2s
    Click Button    ${procees_to_check_out}
    Sleep    6s

    Input Text    ${company_name_txt}    ${typing_company_name}
    Sleep    3s

    Input Text    ${Address_txt}   ${typing_new_address}
    Sleep    3s

    Input Text    ${city_name_txt}   ${typing_city}
    Sleep    3s

    Click Element  ${state_menu}
    Sleep    3s
    Select From List By Index    ${state_menu}  1

    Input Text    ${ZipCode_txt}   ${typing_zip}
     Sleep    3s

    Click Element  ${country_menu}
    Sleep    3s

     Select From List By Index    ${country_menu}  1

    Input Text    ${phone_number_text}   ${typing_phoneNumber}
     Sleep    3s
    Click Button    ${next_btn}
     Sleep    4s