*** Settings ***
Library     SeleniumLibrary
Library     DateTime
#Library    XML
Resource    timesheet_variables.robot
Resource    comman_variables.robot
Resource    HROS_comman.robot
Resource    daily_timesheet.robot
Resource    weekly_timesheet.robot
*** Variables ***
#${url}      https://terralogic.paxanimi.ai/home
${left_bar_icon}    //span[@class='ant-menu-title-content']/a
*** Keywords ***
test_timesheet
    Wait Until Element Is Visible    ${left_menu}
#    Mouse Over    //ul[contains(@class,'ant-menu-light')]
    Sleep    5
    ${left_src}   Get Element Count    ${left_bar_icon}
#    Log To Console    ${left_src}
    Sleep    2

    FOR    ${i}    IN RANGE    1    ${left_src}+1
        Wait Until Element Is Visible    (${left_bar_icon})[${i}]
        ${left_icon_text}       Get Element Attribute    (${left_bar_icon})[${i}]    href
#        Log To Console    ${left_icon_text}
        ${condition}=    Run Keyword And Return Status    Should Contain    ${left_icon_text}    time-sheet
        Run Keyword If    ${condition}    Click Element    (${left_bar_icon})[${i}]

    END

#    FOR    ${i}     IN    1     8
#    	daily_sheet
#    	Sleep    10
#    	Click Element    ${right>}
#        Sleep    15
#    	Log To Console    ${i}
#    END

    daily_sheet
    weekly_sheet


#    Sleep    15
#
#    Wait Until Element Is Visible    ${daily}
#    ${test_val}   Run Keyword And Return Status    Page Should Contain Element    ${edit_img}
#    Log To Console    ${test_val}
##    ${test_val}   Page Should Contain Element    ${edit_img}
#    IF    '${test_val}' == 'False'
##        TRY
#        ${daily_task}=    Run Keyword And Return Status    Page Should Contain    Description
#        Run Keyword If    ${daily_task}    Click Element    ${add_task}
#        Sleep    10
#        ${daily_click}=    Run Keyword And Return Status    Page Should Not Contain    Description
#        Run Keyword If    ${daily_click}    Click Element    ${daily}
#
#        ${open_task}=    Run Keyword And Return Status    Page Should Contain    Select Timesheet Period
#        Run Keyword If    ${open_task}    Press Keys    ${start_time}   9:00 am
#        Sleep    2
#        Run Keyword If    ${open_task}    Click Element    ${mrng_time}
#        Run Keyword If    ${open_task}    Press Keys    ${end_time}   6:00 pm
#        Sleep    2
#        Run Keyword If    ${open_task}    Click Element    ${evening_time}
#        Sleep    2
#        Run Keyword If    ${open_task}    Press Keys    ${project_bar}   Ramp
#        Sleep    2
#        Run Keyword If    ${open_task}    Click Element    ${task_type}
#        Sleep    2
#        Run Keyword If    ${open_task}    Input Text    ${Task_bar}    Automatin_testing
#        Run Keyword If    ${open_task}    Input Text    ${description}    working on Automatin testing
#        Run Keyword If    ${open_task}    Click Element    ${submit_btn}
#
#    END
#
##    ELSE
#    Sleep    5
#    Wait Until Element Is Visible    ${timesheet}
#    ${edit_task}=    Run Keyword And Return Status    Page Should Contain Element    ${timesheet}
#    Run Keyword If    ${edit_task}    Mouse Over    ${edit_img}
#    Run Keyword If    ${edit_task}    Click Element    ${edit_img}
##        Sleep    5
##        Run Keyword If    ${edit_task}    Input Text    ${edit_img}    ${EMPTY}
#    Run Keyword If    ${edit_task}    Input Text    ${description}    working on automation
#    Sleep    5
#    Click Element    ${submit_btn}
#    Sleep    10
#    Click Element    ${delete_img}
#    Click Element    ${del_yes_per}
##    END




#    TRY
#
#
#        ${daily_task}=    Run Keyword And Return Status    Page Should Contain    Description
#        Run Keyword If    ${daily_task}    Click Element    ${add_task}
#        Sleep    10
#        ${daily_click}=    Run Keyword And Return Status    Page Should Not Contain    Description
#        Run Keyword If    ${daily_click}    Click Element    ${daily}
#
#        ${open_task}=    Run Keyword And Return Status    Page Should Contain    Select Timesheet Period
#        Run Keyword If    ${open_task}    Press Keys    ${start_time}   9:00 am
#        Sleep    2
#        Run Keyword If    ${open_task}    Click Element    ${mrng_time}
#        Run Keyword If    ${open_task}    Press Keys    ${end_time}   6:00 pm
#        Sleep    2
#        Run Keyword If    ${open_task}    Click Element    ${evening_time}
#        Sleep    2
#        Run Keyword If    ${open_task}    Press Keys    ${project_bar}   Ramp
#        Sleep    2
#        Run Keyword If    ${open_task}    Click Element    ${task_type}
#        Sleep    2
#        Run Keyword If    ${open_task}    Input Text    ${Task_bar}    Automatin_testing
#        Run Keyword If    ${open_task}    Input Text    ${description}    working on Automatin testing
#        Run Keyword If    ${open_task}    Click Element    ${submit_btn}
#
#    EXCEPT    message
#       Log To Console    time sheet present
#    END


#    Sleep    5
#    Wait Until Element Is Visible    ${timesheet}
#    ${edit_task}=    Run Keyword And Return Status    Page Should Contain Element    ${timesheet}
#    Run Keyword If    ${edit_task}    Mouse Over    ${edit_img}
#    Run Keyword If    ${edit_task}    Click Element    ${edit_img}
#    Run Keyword If    ${edit_task}    Input Text    ${edit_img}    ${EMPTY}
#    Run Keyword If    ${edit_task}    Input Text    ${description}    working on automation
#
#    Sleep    15

#    TRY
#        Page Should Not Contain    Description
#        Click Element    ${daily}
#        Click Element    ${add_task}
#
#    EXCEPT
#        Log To Console    pass arrgument
#
#    END
#    ${count_sheet_type}   Get Element Count    ${daily_weekly_montly_btn}
#    FOR    ${i}    IN RANGE    1    ${count_sheet_type}+1
##        ${text_val}   Get Text    (${count_sheet_type})[${i}}
##        Log To Console    ${text_val}
#        ${element}    Get Element    (${count_sheet_type})[${i}}
#        ${attribute_value}    Get Element Attribute    ${element}    value
#        Log To Console    ${attribute_value}
##        ${condition}=    Run Keyword And Return Status    Should Contain    ${text_val}    Daily
##        Run Keyword If    ${condition}    Click Element    (${count_sheet_type})[${i}}
##        ${condition}=    Run Keyword And Return Status    Should Contain    ${text_val}    Monthly
##        Run Keyword If    ${condition}    Click Element    (${count_sheet_type})[${i}}
#    END
