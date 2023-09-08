*** Settings ***
Library     SeleniumLibrary
#Library    XML
Resource    timesheet_variables.robot
Resource    comman_variables.robot
Resource    HROS_comman.robot

*** Keywords ***
daily_sheet
    FOR    ${i}    IN RANGE    1    8
        Log    ${i}
        Sleep    15

        Wait Until Element Is Visible    ${daily}
        ${test_val}   Run Keyword And Return Status    Page Should Contain Element    ${edit_img}
        Log To Console    ${test_val}
    #    ${test_val}   Page Should Contain Element    ${edit_img}
        IF    '${test_val}' == 'False'
    #        TRY
            ${daily_task}=    Run Keyword And Return Status    Page Should Contain    Description
            Run Keyword If    ${daily_task}    Click Element    ${add_task}
            Sleep    10
            ${daily_click}=    Run Keyword And Return Status    Page Should Not Contain    Description
            Run Keyword If    ${daily_click}    Click Element    ${daily}

            ${open_task}=    Run Keyword And Return Status    Page Should Contain    Select Timesheet Period
            Run Keyword If    ${open_task}    Press Keys    ${start_time}   9:00 am
            Sleep    2
            Run Keyword If    ${open_task}    Click Element    ${mrng_time}
            Run Keyword If    ${open_task}    Press Keys    ${end_time}   6:00 pm
            Sleep    2
            Run Keyword If    ${open_task}    Click Element    ${evening_time}
            Sleep    2
            Run Keyword If    ${open_task}    Press Keys    ${project_bar}   Ramp
            Sleep    2
            Run Keyword If    ${open_task}    Click Element    ${task_type}
            Sleep    2
            Run Keyword If    ${open_task}    Input Text    ${Task_bar}    Automatin_testing
            Run Keyword If    ${open_task}    Input Text    ${description}    working on Automatin testing
            Run Keyword If    ${open_task}    Click Element    ${submit_btn}

        END
        Sleep    8
        Wait Until Element Is Visible    ${edit_img}
        ${edit_task}=    Run Keyword And Return Status    Page Should Contain Element    ${timesheet}
        Run Keyword If    ${edit_task}    Mouse Over    ${edit_img}
        Run Keyword If    ${edit_task}    Click Element    ${edit_img}
    #        Sleep    5
    #        Run Keyword If    ${edit_task}    Input Text    ${edit_img}    ${EMPTY}
        Run Keyword If    ${edit_task}    Input Text    ${description}    working on automation
        Sleep    5
        Click Element    ${submit_btn}
        Sleep    10
        Click Element    ${delete_img}
        Click Element    ${del_yes_per}
        Sleep    10
        Click Element    ${right>}
    END
