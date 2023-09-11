*** Settings ***
Library     SeleniumLibrary
Library    Collections
Library    XML
Resource    comman_variables.robot
Resource    top_menu_vari.robot
*** Keywords ***
Top_menu
    TRY
        Click Element    //div[@class='GlobalSearch___1kxGo']
        Sleep    5
        Input Text    //input[@placeholder='Search...']    hemant
        Sleep    5
        Press Key    //input[@placeholder='Search...']    \\27
        Sleep    5
        Mouse Over    ${msg_icon}
        Sleep    2
        Click Element    ${quick_link}
        Sleep    5
        Click Element    ${close_quick}
        Sleep    5
        Click Element    ${noti_bar}
        Sleep    2
        Click Element    ${close_quick}
        Sleep    5
        Click Element    ${theme_bar}
        Sleep    5
        Click Element    ${dark_btn}
        Sleep    2
        Click Element    ${close_quick}
        Sleep    5
        Click Element    ${language}
        Sleep    2
        Click Element    ${in_en}
        
    EXCEPT
        Log To Console    please increase the sleep timing
        
    END

    