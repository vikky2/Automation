*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDowns and ListsBoxes
    open browser    ${url}  ${browser}
    maximize browser window

    select from list by label   continents  Asia
    sleep   3
    select from list by index   continents  5

     #select from list by value continents value
     #list box
    select from list by label  selenium_commands   Switch Commands
    select from list by label  selenium_commands   WebElement Commands
    sleep   3
    unselect from list by label    selenium_commands   Switch Commands
    close browser

