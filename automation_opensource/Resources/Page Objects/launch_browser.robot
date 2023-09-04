*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/registration_variables.robot

*** Keywords ***
launch_browser

    [Arguments]     ${app_url}  ${app_browser}
    Open Browser    ${app_url}  ${app_browser}