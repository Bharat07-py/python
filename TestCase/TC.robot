*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/userDefindKeyword.robot
#Resource    ../Variables/FlipkartVariables.robot
Suite Setup    open my browser
Suite Teardown    Close All Browsers




*** Test Cases ***


TC_001:To Verify user can Close the login module by clicking on cross icon on top right of pop-up
    [Documentation]    Close the login module by clicking on cross icon on top right of pop-up
    [Tags]  robot:exclude
    Wait Until Element Is Visible    ${loginPopupClose}
    Click Element    ${loginPopupClose}



TC_002:To Verify user can Click on global search module and Search with the keyword.
    [Documentation]    Click on global search module and Search with the keyword "mobile".
    [Tags]
    Click Element    ${searchBox} 
    Input Text    ${searchBox}     mobile
    Click Element    ${searchSubmitBtn}

    Wait Until Element Is Visible    ${searchResultcontains}
    ${serchResultTxt}=      Get Text    ${searchResultcontains}
    Log To Console    :-------Search result Text message is:${serchResultTxt} 
    Log To Console    :-------verify message: "Showing 1 - 24 of 9,664 results for "mobile" 
    Element Should Be Visible    ${searchResultcontains}

TC_003: To Verify For 10th and 11th phone in search click on compare checkbox.
    [Documentation]     For 10th and 11th phone in search click on compare checkbox.
    [Tags]
    Scroll Element Into View     ${checkBoxResults_11}
    Log To Console    :------------Selecting checkboxes for 10th and 11th iteam.
    Click Element    ${checkBoxResults_10}      
    Click Element     ${checkBoxResults_11}
    
TC_004: To verify item is added to compare tray.
    [Documentation]    verify item is added to compare tray.
    [Tags]
    Click Element    ${compareStick}
    Wait Until Element Is Visible    ${compareListElement1}    ${DefaultWait}
    Element Should Be Visible    ${compareListElement1}    ${DefaultWait}
    Wait Until Element Is Visible    ${productPrize}    ${DefaultWait}
    ${prize}=    Get Text    ${productPrize}
    Log To Console    :----------Prize of selected element on Compare screen is:-${prize}
    Scroll Element Into View    ${addToCart}
    Wait Until Element Is Visible    ${addToCart}    ${DefaultWait}
    Click Element   ${addToCart}
    Wait Until Element Is Visible    ${FinalProductPrizeele}    ${DefaultWait}
    ${CartItemPrize}=    Get Text    ${FinalProductPrizeele}
    Log To Console    :-------------Selected iteam prize on cart screen:${CartItemPrize}
    Should Be Equal    ${prize}     ${CartItemPrize}
    Log To Console    :---------------veifying Both prize
    Execute JavaScript    window.scrollTo(0,1000)
    Wait Until Element Is Visible    ${item+Brtn}    ${DefaultWait}
    Click Element    ${item+Brtn}
    Wait Until Element Is Visible    ${toastMessage}    ${DefaultWait}
    ${toastText}=    Get Text    ${toastMessage}
    Log To Console    :----Toast message is:${toastText}
    Execute JavaScript    window.scrollTo(0,1000)

    

TC_005: To Verify CLick on remove option.
    [Documentation]     CLick on remove option.
    [Tags]
    Wait Until Element Is Visible    ${removeBtn}    ${DefaultWait}
    Click Element    ${removeBtn}
    Wait Until Element Is Visible    ${removeBtnPopup}    ${DefaultWait}
    Click Element    ${removeBtnPopup}
    Wait Until Element Is Visible   ${toastMessage}    ${DefaultWait}
    ${toastText}=    Get Text    ${toastMessage}
    Log To Console    :----Toast message is:${toastText}



TC_006: verify message on empty cart screen.
    [Documentation]    verify message on empty cart screen
    [Tags]
    Wait Until Element Is Visible    ${missingCartItemLocation}    ${DefaultWait}
    ${emtyCartText1}=    Get Text    ${missingCartItemLocation}
    ${cartText1}=    Set Variable    ${emtyCartText1}
    Log To Console    :----------Verifying messages on empty cart screen.
    Element Text Should Be     ${missingCartItemLocation}    ${missingCartItemTxt}
    Element Text Should Be    ${loginToSee_location}     ${lOginTOSee_Txt} 


