*** Settings ***
Library     SeleniumLibrary
Library    Process
Library    RPA.RobotLogListener
Resource    ../resource/HROS_comman.robot
Resource    ../resource/comman_variables.robot
Resource    ../resource/top_menu_fun.robot
Resource    ../resource/timesheet_variables.robot
Resource    ../resource/Timesheet.robot
*** Test Cases ***
HROS_test
#    Set Selenium Speed    5
    launch_browser    ${url}    ${browser}
    Sleep    5
    login_test

    Sleep    15
    test_timesheet
    Sleep    10
    Top_menu
    Sleep    5
    logout
    Sleep    5