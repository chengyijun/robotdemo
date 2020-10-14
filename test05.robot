*** Settings ***
Suite Setup    Commen_Suite_Setup
Suite Teardown    Commen_Suite_Teardown
Documentation    Example case for resource
Force Tags    owner
Resource    ./resource/resource.robot
Library    Selenium2Library
Library    Collections
Library    ./lib/robot.py

*** Test Cases ***

First Case
    [Documentation]    this is a first case for resource
    [Tags]    anan
    Calculate and Check Equals
    Calculate and Check Equals  expression=6+3    expected=${9}
    ${result_first_case}    gen_sign           @{list1}
    Set Suite Variable      ${test_id}         ${result_first_case}
    Log                     test_id=${test_id}
Second Case
    [Documentation]    this is a second case for custom lib
    [Tags]             anan
    ${sign}            gen_sign                     @{list1}
    Log                sign=${sign}
    Log                test_id=${test_id}
