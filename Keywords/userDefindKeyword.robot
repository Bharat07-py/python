*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/FlipkartVariables.robot


*** Keywords ***

open my browser
    Open Browser    ${baseUrl}    ${browser}
    Maximize Browser Window
