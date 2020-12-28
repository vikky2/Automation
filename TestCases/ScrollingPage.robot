*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    execute javascript  window.scrollTo(0,2500)

    close browser