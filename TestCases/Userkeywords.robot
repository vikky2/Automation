*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
TC1
    launchBrowser   ${url}  ${browser}
    input text  name:email   mercury
    input text  name:pass   mercury

    close browser

*** Keywords ***
launchBrowser
    [Arguments]  ${appurl}  ${appbrowser}
    open browser    ${appurl}  ${appbrowser}
    maximize browser window




