*** Settings ***
Documentation    Example case for test
Force Tags    owner
Library    Selenium2Library
Library    Collections

*** Variables ***
${var}     1
${result}   1

*** Test Cases ***
First Case
    [Documentation]    this is a first case for test example
    [Tags]    person
    Log to console    ${var}
    Log to console    ${result}
    should be equal    ${result}    ${var}