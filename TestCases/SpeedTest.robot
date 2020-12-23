*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    http://demowebshop.tricentis.com/register       chrome
    maximize browser window
    set selenium speed  1

    select radio button   Gender      M
    input text  name:FirstName      Vikky
    input text  name:LastName       Ranjan
    input text  name:Email      vikky.ranjan2@gmail.com
    input text  name:Password       vikky123
    input text  name:ConfirmPassword        vikky123
    ${speed}=   get selenium speed
    log to console  ${speed}
    close browser
