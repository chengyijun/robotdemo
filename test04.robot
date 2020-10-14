*** Settings ***
Documentation    Example case for resource
Force Tags    owner
Resource    ./resource/resource.txt
Library    Selenium2Library
Library    Collections
Library    ./lib/robot.py

*** Test Cases ***
First Case
    [Documentation]    this is a first case for resource
    [Tags]    anan
#    Calculate and Check Equals
    Calculate and Check Equals  expression=6+3    expected=${9}
*** Variables ***
@{list1}      1 2 3

*** Keywords ***
Calculate and Check Equals
    [Arguments]    ${expression}=3+3    ${expected}=${6}
    ${res}    Evaluate    ${expression}
    Log to console    expression=${expression}
    should be equal    ${res}    ${expected}

    ${result}    gen_sign    @{list1}
    log to console   ${result}