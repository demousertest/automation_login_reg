*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/login_variables.robot
Resource    ../../TestCycles/Module 1 folder/registration1.robot
*** Keywords ***
login_fun
    Sleep    5
    Input Text    //*[@name='username']    Admin
    Input Password    //*[@name='password']    admin123
    Click Element    ${login_submit}

    TRY
        Page Should Contain    Test login
        Input Text    ${user_name}  ${first name}
        Input Text    ${login_pass}    ${pass}
        Click Element    ${login_submit}
        Sleep    5s
        ${login_msg}    Run Keyword And Return Status    Page Should Contain    Logged In Successfully
        Run Keyword If    ${login_msg}    Click Element    ${logout_btn}
    EXCEPT    message
        Log To Console    pass exicution
    END
#    Input Text    //*[@name='username']    Admin
#    Input Password    //*[@name='password']    admin123
#    Click Element    ${login_submit}
