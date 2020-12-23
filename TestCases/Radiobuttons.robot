*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1seconds

    #Selecting radio button
    select radio button  sex     Female
    select radio button  exp     5

    #Selecting Checkbox
    select checkbox  BlackTea
    select checkbox  RedTea

    unselect checkbox   BlackTea


    close browser

