*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    http://www.newtours.demoaut.com/    chrome
    maximize browser window
    ${AllLinksCount}=   get element count   xpath://a
    log to console  ${AllLinksCount}

    @{LinkItems}    create list

    : FOR     ${i}    IN RANGE    1   ${AllLinksCount}
    \   ${linktext}=    get text    xpath:(//a)[${i}]
    \   log to console  ${linktext}

    close browser
