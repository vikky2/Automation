*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseActionsTest
    # Right click/open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    maximize browser window
    open context menu  xpath://span[@class="context-menu-one btn btn-neutral"]
    sleep   3

    # Double click action
    go to   https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(), 'Copy Text')]
    sleep   3

    close browser

