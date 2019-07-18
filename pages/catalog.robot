*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Choose summer Dresses
    Click Element  xpath://*[@id="categories_block_left"]/div/ul/li[3]/a

Sort by High price
    Select From List By Value  id:selectProductSort  price:desc