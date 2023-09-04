*** Settings ***
Library     SeleniumLibrary
Resource    launch_browser.robot
Resource    ../Variables/login_variables.robot
Resource    ../keywords/login_keyword.robot

*** Test Cases ***
login
    ${login_url_list}      Create List     ${login_url}    ${login_url1}
    FOR    ${i}    IN    @{login_url_list}
        launch_browser      ${i}    ${login_browser}
        Sleep    5
        Maximize Browser Window
        login_fun
        Sleep    10

    END
