*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Testing Frames
    open browser    https://seleniumhq.github.io/selenium/docs/api/java/index     chrome
    maximize browser window
    click element   xpath://header/nav[1]/div[1]/div[2]/ul[1]/li[1]/a[1]
    select frame    packageListFrame    #id name    xpath
    click link    org.openqa.selenium
    unselect frame
    sleep   3

    select frame    packageFrame
    click link    WebDriver
    unselect frame
    sleep   2

    select frame    classFrame
    click link     Help
    unselect frame
    sleep   2

    close browser
