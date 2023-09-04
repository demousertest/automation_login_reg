*** Settings ***
Resource    ../keywords/common_keywords.robot
Resource    ../Variables/common_variables.robot
Resource    ../Variables/registration_variables.robot
Resource    ../Page Objects/launch_browser.robot


*** Test Cases ***
test_registration
    ${url_list}     Create List     ${url1}      ${url}
    FOR    ${element}    IN    @{url_list}
        launch_browser    ${element}    ${browser}
        Maximize Browser Window
        fill_form
        Sleep    35s
    END
