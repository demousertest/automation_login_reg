*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
launch
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}