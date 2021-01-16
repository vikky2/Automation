*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template   Invalid login

*** Test Cases ***
Right user empty pass   admin@yourstore.com      ${EMPTY}
Right user wrong pass   admin@yourstore.com     xyz
Wrong user rigt pass    admin@yourstore.com     admin
Wrong user empty pass   admin@yourstore.com     ${EMPTY}
Wrong user wrong pass   admin@yourstore.com     xyz



*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username      ${username}
    Input pwd     ${password}
    click login button
    Error message should be visible
