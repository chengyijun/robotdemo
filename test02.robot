*** Variables ***
${var}　　value
@{list}　　a　　b　　c　　${var}
&{dict}　　key1=name key2=${list}

*** Test Cases ***
Second Case
    Log to console  ${var}
    Log to console  ${list}
    Log to console  ${dict}