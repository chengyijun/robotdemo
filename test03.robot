*** Test Cases ***
First Case
    [Documentation]    this is a first case for resource
    [Tags]    anan
    Calculate and Check Equals
    Calculate and Check Equals  expression=6+3    expected=${9}
*** Keywords ***
Calculate and Check Equals
    [Arguments]        ${expression}=3+3    ${expected}=${6}
    ${res}             Evaluate             ${expression}
    Log to console     expression=${expression}
    Log                我爱你祖国
    should be equal    ${res}                ${expected}