*** Settings ***

*** Variables ***



${baseUrl}    https://www.flipkart.com/
${browser}    chrome
${DefaultWait}    20

#Locators/variables - Login Page

${loginPopupClose}    xpath=//span[@class="_30XB9F"]
${searchBox}    xpath=//input[@title="Search for Products, Brands and More"]
${search}    mobile
${searchSubmitBtn}    xpath=//button[@type="submit"]

#Locators/variables - Search Results

${searchResultcontains}    xpath=//span[@class="BUOuZu"]
${searchResultcontainsTxt}        Showing 1 - 24 of 10,499 results for ""
${searchResults}    xpath=//div[@class="_75nlfW"]
${checkBoxResults_11}    xpath=(//span[@class="Lni97G"])[11]
${checkBoxResults_10}    xpath=(//span[@class="Lni97G"])[10]
${compareStick}    xpath=//a[@class="RCafFg -3yGLs"]

#Locators/variables - Compare Screen

${compareListElement1}    id=container
${compareListElement2}    xpth=(//a[@class="NKi0M6"])[2]

${addToCart}    xpath=//button[@class="QqFHMw vslbG+ In9uk2 _4ltxGf"]
${item+Brtn}    (//button[@class="LcLcvv"])[2]
${removeBtn}    xpath=(//div[@class="sBxzFz"])[2]
${productPrize}    xpath=(//div[@class="Nx9bqj"])[1]

#Locators/variables - Remove Confirmation Pop-up

${removeItemConfirmationPopup}    xpath=//div[@class="_8mqQwQ _8MUv97"]
${removeBtnPopup}    xpath=//div[@class="sBxzFz fF30ZI A0MXnh"]
${toastMessage}    xpath=//div[@class="eIDgeN"]

${FinalProductPrizeele}    xpath=//span[@class="LAlF6k re6bBo"]
${goingToCart}    xpath=//button[contains(text(),'GOING TO CART')]
#//*[text()='going to cart']

#Locators/variables - Missing Cart Iteam

${missingCartItemLocation}    xpath=//div[@class="s2gOFd"]
${missingCartItemTxt}    Missing Cart items?
${loginToSee_location}    xpath=//div[@class="orqM3-"]
${lOginTOSee_Txt}    Login to see the items you added previously
