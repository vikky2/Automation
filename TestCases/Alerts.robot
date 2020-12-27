*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    click element   xpath://*[@id="HTML9"]/div[1]/button    #opens alert
    sleep   3
    #handle alert    accept   --close the alert button by ok button
    #handle alert    dismiss  --close the alert button by close button

    #handle alert    leave    --open alert window for some time
#    alert should be present     Press a button!     --to verify the alert window will present or not we use both should be present or should be not present.

    alert should not be present     Press a button!
