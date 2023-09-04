*** Settings ***
Resource    ../keywords/common_keywords.robot
Resource    ../Variables/common_variables.robot
Resource    ../Variables/registration_variables.robot
Resource    ../Page Objects/launch_browser.robot
Library     SeleniumLibrary
Resource    launch_browser.robot
Resource    ../Variables/login_variables.robot
Resource    ../keywords/login_keyword.robot

*** Test Cases ***
#test_registration
#    ${url_list}     Create List     ${url1}      ${url}
#    FOR    ${element}    IN    @{url_list}
#        launch_browser    ${element}    ${browser}
#        Maximize Browser Window
#        fill_form
#        Sleep    25s
#    END

test_
    launch_browser     ${login_url1}    ${login_browser}
    Sleep    5
    Input Text    //*[@name='username']    Admin
    Input Password    //*[@name='password']    admin123
    Click Element    ${login_submit}