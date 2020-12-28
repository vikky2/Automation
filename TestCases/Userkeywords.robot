*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
TC1
    open browser    ${url}  ${browser}
    maximize browser window
    input text  name:email   mercury
    input text  name:pass   mercury

    close browser

*** Keywords ***





