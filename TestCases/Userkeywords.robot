*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${url}      https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${PageTitle}=   launchBrowser   ${url}  ${browser}
    log to console  ${PageTitle}
    log     ${PageTitle}
    input text  name:email   mercury
    input text  name:pass   mercury

    close browser







