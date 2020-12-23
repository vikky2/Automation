*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Testing Frames
    open browser    https://seleniumhq.github.io/selenium/docs/api/java/index     chrome
    maximize browser window

    select frame    packageListFrame    #id name    xpath
    click link    org.openqa.selenium
    unselect frame
    sleep   2

    select frame    packageFrame
    click link    webDriver
    unselect frame
    sleep   2

    select frame    classFrame
    click link     Index
    unselect frame
    sleep   2

    close browser
