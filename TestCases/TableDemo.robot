*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TableOperations
    open browser  https://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    ${rows}=    get element count   xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console  ${rows}
    log to console  ${cols}