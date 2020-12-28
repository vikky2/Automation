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

    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console  ${data}

    Table column should contain  xpath://table[@name='BookTable']   2   Author
    Table row should contain    xpath://table[@name='BookTable']    4   Learn   JS

