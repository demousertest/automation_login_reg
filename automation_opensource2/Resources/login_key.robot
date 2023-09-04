*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/variable.robot
Resource    ../comman_files/data.robot
*** Keywords ***
Login_fun
    ${logout}     Run Keyword And Return Status    Page Should Contain    Log out
    Run Keyword If    ${logout}    Click Element    ${log_out}
    
    Click Element    ${login}
    Input Text    ${Email}    ${email_val}
    Input Text    ${Reg_Pass}    ${pass}
    Click Element    ${RememberMe}
    Click Element    ${login_btn}
    
    Sleep    10
