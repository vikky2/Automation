*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    http://www.newtours.demoaut.com/    chrome
    maximize browser window
    ${AllLinksCount}=   get element count   xpath://a
    log to console  ${AllLinksCount}