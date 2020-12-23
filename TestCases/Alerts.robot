*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    click element   xpath://*[@id="HTML9"]/div[1]/button    #opens alert
    sleep   3
    #handle alert    accept
    #handle alert    dismiss

    handle alert    leave
    sleep   2
    close all browsers
