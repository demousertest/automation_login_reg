*** Settings ***
Library     SeleniumLibrary
Resource    timesheet_variables.robot
Resource    comman_variables.robot
Resource    HROS_comman.robot
*** Variables ***
${weekly_btn}   //span[text()='Weekly']/../../..
${week_date}    //div[contains(@class,'timeStamp___3qfPO')]
#${emptysheet}      //span[@class='hourValue___vv8Tf']//img
${empty_sheet}      //span[@class='hourValue___vv8Tf']//img
${week_selection}   //div[@class='ant-form-item-control-input-content']
${this_week}    //span[text()='This Week']/..
${timesheet_value}  //span[@class='hourValue___vv8Tf']/..
${task_value}   //div[@class='body___20Zon']//p
*** Keywords ***
weekly_sheet
    Sleep    10

    Wait Until Element Is Visible    ${weekly}
    ${weekly_task}=    Run Keyword And Return Status    Page Should Contain    Description
    Run Keyword If    ${weekly_task}    Click Element    ${weekly_btn}
    Sleep    10
    Click Element    ${right>}
    Click Element    ${right>}
#    Click Element    ${right>}
    Sleep    10

    ${nub_timesheet}      Get Element Count    ${timesheet_value}
    Log To Console    ${nub_timesheet}

    ${time_val}   Run Keyword And Return Status    Page Should Contain Element    ${timesheet_value}
    IF    '${time_val}' == 'False'
        
        ${weekly_task}=    Run Keyword And Return Status    Page Should Contain    All Projects
        Run Keyword If    ${weekly_task}    Click Element    ${add_task}
        Sleep    10
    #        ${daily_click}=    Run Keyword And Return Status    Page Should Not Contain    Select Timesheet Period
    #        Run Keyword If    ${daily_click}    Click Element    ${daily}

        ${open_task}=    Run Keyword And Return Status    Page Should Contain    Select Timesheet Period
        Click Element    ${week_selection}
        Sleep    3
        Press Keys      //div[@class='ant-form-item-control-input-content']//input[@placeholder='Start date']       2023-09-25
        Press Key    //div[@class='ant-form-item-control-input-content']//input[@placeholder='Start date']    \\13
    #    Click Element    ${this_week}
        Sleep    2
        Press Keys      //div[@class='ant-form-item-control-input-content']//input[@placeholder='End date']     2023-09-29
        Press Key    //div[@class='ant-form-item-control-input-content']//input[@placeholder='End date']    \\13

        Sleep    5
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

        Sleep    12
    END

    ${nub_timesheet}      Get Element Count    ${timesheet_value}
    Log To Console    ${nub_timesheet}

    FOR    ${i}    IN RANGE    1    ${nub_timesheet}+1
        Set Selenium Speed    2
        Log To Console    ${i}

        Click Element    (${timesheet_value})[${i}]
        Sleep    5
        Mouse Over    (${task_value})[${i}]
        Sleep    2
        Wait Until Element Is Visible    (//div//img[contains(@src,'edit')])[${i}]
        Click Element    (//div//img[contains(@src,'edit')])[${i}]
        Sleep    5
        Input Text    ${description}    working on Automatin testing
        ${open_task}    Click Element    ${submit_btn}
        Sleep    4
        IF    ${i} == 5
             BREAK
        END
    END
    Sleep    5
    FOR    ${i}    IN RANGE    1    ${nub_timesheet}+1
        Set Selenium Speed    2
        Log To Console    ${i}

        Click Element    (${timesheet_value})[${i}]
        Sleep    5
        Mouse Over    (${task_value})[${i}]
        Sleep    10
#            Wait Until Element Is Visible    (//div//img[contains(@src,'delete')])[${i}]
        Click Element    (//div//img[contains(@src,'delete')])
        Sleep    2
        Click Element    //div[text()='Ok']/../..

        IF    ${i} == 5
             BREAK
        END
    END


#    Sleep    10
#        Click Element    (${timesheet_value})[${i}]
#        Sleep    5
#        Mouse Over    (${task_value})[${i}]
#        Wait Until Element Is Visible    (//div//img[contains(@src,'edit')])[${i}]
#        Click Element    (//div//img[contains(@src,'delete')])[${i}]
#        Sleep    2
#        Click Element    //div[text()='Ok']/../..

#    FOR    ${i}    IN RANGE    1    ${nub_timesheet}+1
#        Set Selenium Speed    2
#        Log    ${i}
#        
#        Click Element    (${timesheet_value})[${i}]
#        Mouse Over    (${task_value})[1]
#        Wait Until Element Is Visible    (//div//img[contains(@src,'edit')])[1]
#        Click Element    (//div//img[contains(@src,'edit')])[1]
#    END


#    ${weekly_task}=    Run Keyword And Return Status    Page Should Contain    All Projects
#    Run Keyword If    ${weekly_task}    Click Element    ${add_task}
#    Sleep    10
##        ${daily_click}=    Run Keyword And Return Status    Page Should Not Contain    Select Timesheet Period
##        Run Keyword If    ${daily_click}    Click Element    ${daily}
#
#    ${open_task}=    Run Keyword And Return Status    Page Should Contain    Select Timesheet Period
#    Click Element    ${week_selection}
#    Sleep    3
#    Press Keys      //div[@class='ant-form-item-control-input-content']//input[@placeholder='Start date']       2023-09-11
#    Press Key    //div[@class='ant-form-item-control-input-content']//input[@placeholder='Start date']    \\13
##    Click Element    ${this_week}
#    Sleep    2
#    Press Keys      //div[@class='ant-form-item-control-input-content']//input[@placeholder='End date']     2023-09-15
#    Press Key    //div[@class='ant-form-item-control-input-content']//input[@placeholder='End date']    \\13
#
#    Sleep    5
#    Run Keyword If    ${open_task}    Press Keys    ${start_time}   9:00 am
#    Sleep    2
#    Run Keyword If    ${open_task}    Click Element    ${mrng_time}
#    Run Keyword If    ${open_task}    Press Keys    ${end_time}   6:00 pm
#    Sleep    2
#    Run Keyword If    ${open_task}    Click Element    ${evening_time}
#    Sleep    2
#    Run Keyword If    ${open_task}    Press Keys    ${project_bar}   Ramp
#    Sleep    2
#    Run Keyword If    ${open_task}    Click Element    ${task_type}
#    Sleep    2
#    Run Keyword If    ${open_task}    Input Text    ${Task_bar}    Automatin_testing
#    Run Keyword If    ${open_task}    Input Text    ${description}    working on Automatin testing
#    Run Keyword If    ${open_task}    Click Element    ${submit_btn}
#
#    Sleep    10
##    END
