*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseActionsTest
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    maximize browser window
    open context menu  xpath://span[@class="context-menu-one btn btn-neutral"]
    sleep   3

    close browser