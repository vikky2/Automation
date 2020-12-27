*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element   xpath
