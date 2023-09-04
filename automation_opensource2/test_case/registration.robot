*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/reg_key.robot
Resource    ../comman_files/launch_browser.robot
Resource    ../Resources/variable.robot
Resource    ../Resources/login_key.robot
*** Test Cases ***
Reg
    launch      ${url}      ${browser}
    Maximize Browser Window
    regstration
    Sleep    10
    Login_fun
