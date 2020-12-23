*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register       chrome
    maximize browser window

    set selenium implicit wait  10
    select radio button   Gender      M
    input text  name:FirstName1      Rohan
    input text  name:LastName       Ranjan
    input text  name:Email      rohan.ranjan2@gmail.com
    input text  name:Password       rohan123
    input text  name:ConfirmPassword        rohan123
    close browser