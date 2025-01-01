*** Settings ***
Library    SeleniumLibrary
Library    Collections
*** Variables ***
${allBoook}    xpath=//div[@class="col"]
${addTocart1}    xpath=(//div[contains(@class,'jsx-313054587 flex items')])[10]
${addTocart2}    xpath=(//div[contains(@class,'jsx-313054587 flex items')])[11]
${addTocart3}    xpath=(//div[contains(@class,'jsx-313054587 flex items')])[13]
*** Test Cases ***

Open Browser Test
    Open Browser    https://www.mypustak.com/        chrome
    Maximize Browser Window
    Sleep    5
    ${Books}     Get WebElements   ${allBoook}
    FOR  ${bkele}  IN  @{Books}
        ${bookName}=    Get Text    ${bkele}
        Log To Console    :--${bookName}
        Log To Console    *******************************************    
    END
    
    Scroll Element Into View    ${addTocart1}
    Sleep    5
    Click Element    ${addTocart1}
    # Click Element    ${addTocart2}
    # Click Element    ${addTocart3}
    Sleep    5
    Close All Browsers
    



    
