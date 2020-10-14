*** Settings ***
Documentation  this is a test demo case
Library    ./../lib/robot.py

*** Variables ***
${var1}     测试环境初始化
@{list1}    a  b  c  d
&{dict1}    key1=sf     key2=${list1}
${INSTANTIATE_JSON_FILE}
${INSTANCEID}

*** Keywords ***
Calculate and Check Equals
    [Arguments]    ${expression}=3+3    ${expected}=${6}
    ${res}    Evaluate    ${expression}
    Log to console    expression=${expression}
    should be equal    ${res}    ${expected}

    ${result}    gen_sign    @{list1}
    log to console   ${result}
    should contain    ${result}    c
    log to console    ${result}

Commen_Suite_Setup
    Common_Case_Setup
    Common_Case_Log

Commen_Suite_Teardown
    Undeploy_Case_Setup

Common_Case_Setup
    Log                  ${var1}

Common_Case_Log
    Log                  测试环境初始化好了

Undeploy_Case_Setup
    Log                  测试完毕测试现场恢复
