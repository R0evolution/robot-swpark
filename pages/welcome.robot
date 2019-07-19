*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://automationpractice.com
${BROWSER}  chrome

*** Keywords ***
Open
    Open Browser  ${URL}  browser=${BROWSER}
    Maximize Browser Window

Home
    Go To  ${URL}


Choose menu Dresses
    Click Element  xpath://*[@id="block_top_menu"]/ul/li[2]/a