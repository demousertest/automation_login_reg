*** Settings ***
Library     SeleniumLibrary
Resource    variable.robot
Resource    ../comman_files/data.robot

*** Keywords ***
regstration
    ${create_btn}    Run Keyword And Return Status    Page Should Contain    Register
    Run Keyword If    ${create_btn}    Click Element  ${create_acc}
    Click Element    ${gender}
    Input Text    ${Name}    ${name_val}
    Input Text    ${LName}    ${last_name}
    Input Text    ${Email}    ${email_val}
    Input Text    ${Reg_Pass}   ${pass}
    Input Text    ${Re_type_pass}    ${pass}

    Sleep    10
    Click Element    ${submit_btn}
    Sleep    5
    ${pass_error}    Run Keyword And Return Status    Page Should Contain    The specified email already exists
    Run Keyword If    ${pass_error}    Log To Console    The specified email already exists
    Run Keyword If    ${pass_error}    Click Element    ${login}
    
    
    ${suc_msg}    Run Keyword And Return Status    Page Should Contain    Your registration completed
    Run Keyword If    ${suc_msg}    Log To Console       Your registration completed

    ${suc_msg}    Run Keyword And Return Status    Page Should Contain    Log out
    Run Keyword If    ${suc_msg}    Click Element    ${log_out}
#
    Sleep    5


