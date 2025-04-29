*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.example.com

*** Test Cases ***
Open Website and Verify Title
    Open Browser    ${URL}    Chrome
    Title Should Be    Example Domain
    Close Browser
