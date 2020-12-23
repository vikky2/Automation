*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com/   chrome
    click link  xpath://a[@class='ico-login']
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password     Test@123
    click element   xpath://input[@type='submit']
    close browser

*** Keywords ***
