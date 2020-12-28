*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
TC1
    launchBrowser
    input text  name:email   mercury
    input text  name:pass   mercury

    close browser

*** Keywords ***
launchBrowser
    open browser    ${url}  ${browser}
    maximize browser window




