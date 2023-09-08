*** Settings ***
Library     SeleniumLibrary
Resource    comman_variables.robot
*** Keywords ***
launch_browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
login_test
    Input Text    ${email}    ${email_val}
    Input Password    ${password}    ${password_val}
    Click Element    ${check_box}
    Click Element    ${smt_btn}

logout
    Wait Until Element Is Visible    ${drop_down}
    Click Element    ${drop_down}
    Wait Until Element Is Visible    ${logout}
    Mouse Over    ${logout}
    Click Element    ${logout}
