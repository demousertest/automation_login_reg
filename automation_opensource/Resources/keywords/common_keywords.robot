*** Settings ***
Library           SeleniumLibrary
Library    XML
Library     Collections
Library    Builtin
Library    RPA.Word.Application
Library    RPA.RobotLogListener
Resource    ../Variables/common_variables.robot
Resource    ../Variables/registration_variables.robot
Resource    ../../TestCycles/Module 1 folder/registration1.robot
*** Keywords ***



fill_form
    TRY
        Page Should Contain    Customer Details:

        Click Element      ${title_option}
        Sleep    2
        ${title_count}    Get Element Count    ${select_title}
        Log To Console    ${title_count}
        FOR    ${i}    IN RANGE    1    ${title_count}+1
            ${title_values}     Get Text    (${select_title})[${i}]
            Run Keyword If    '${title_values}' == 'Mr.'    Click Element  (${select_title})[${i}]
            Sleep    1
        END

    EXCEPT
        log     Title not present
    END
#    FINALLY
    Input Text    ${first_name}    ${first name val}
    Input Text    ${last_name}    ${last name val}
    Input Text    ${email}    ${email val}
    Input Text    ${password}    ${pass val}

    TRY
        Page Should Contain    Mobile
        Input Text    ${phone_num}    ${mobile}
        Page Should Contain    Gender
        ${num_gen}    Get Element Count    ${gender}
        FOR    ${i}    IN RANGE    1    ${num_gen}+1
            ${gen}     Get Text    (${gender})[${i}]
            Log To Console    ${gen}
            Run Keyword If    '${gen}' == ${Male}    Click Element  (${select_gen})[${i}]
            Sleep    2
        END
    EXCEPT
        log     mobile number and gender not present in form

    END
    Scroll Element Into View    ${address_line1}
    Input Text    ${address_line1}    ${add1 val}
    Input Text    ${address_line2}    ${add2 val}
    Scroll Element Into View    ${city}
    Input Text    ${city}    ${city_val}
    Scroll Element Into View    ${state}
    Input Text    ${state}   ${state_val}
    Scroll Element Into View    ${country_options}
    Input Text    ${postal}    ${pin_val}
    Click Element    ${country_options}
    Sleep    5

    Wait Until Element Is Visible    ${country_options}
    Click Element    ${country_options}
    Click Element    ${all_country}
    Sleep    2s
#    Scroll Element Into View    about_details

    ${about}    Run Keyword And Return Status    Page Should Contain    Any other information you think we should know about?
    Run Keyword If    ${about}    Scroll Element Into View    ${about_details}
    Run Keyword If    ${about}    Input Text    ${about_details}    ${about_val}
    ${per}    Run Keyword And Return Status    Page Should Contain    Would you like to receive promotional material from us? *
    Run Keyword If    ${per}    Scroll Element Into View    ${promotional_yes}
    Run Keyword If    ${per}    Click Element    ${promotional_yes}

    ${com}    Run Keyword And Return Status    Page Should Contain    Company:
    Run Keyword If    ${com}    Scroll Element Into View    ${com_details}
    Run Keyword If    ${com}    Input Text    ${com_details}    ${com_dtl}

    ${ind}    Run Keyword And Return Status    Page Should Contain    Industry:
    Run Keyword If    ${ind}    Scroll Element Into View    ${industry_details}
    Run Keyword If    ${ind}    Input Text    ${industry_details}    ${dep_vl}
    ${job}    Run Keyword And Return Status    Page Should Contain    Job Function:
    Run Keyword If    ${job}    Scroll Element Into View    ${dep_details}
    Run Keyword If    ${job}    Input Text    ${job_details}    ${job_vl}
    ${dep}    Run Keyword And Return Status    Page Should Contain    Department:
    Run Keyword If    ${dep}    Scroll Element Into View    ${dep_details}
    Run Keyword If    ${dep}    Input Text    ${dep_details}    ${dep_vl}
    Scroll Element Into View    ${sub_btn}
    ${rbt_chk}    Run Keyword And Return Status    Page Should Contain    I'm not a robot
    Run Keyword If    ${rbt_chk}    Sleep    15s

    ${robot_check}    Run Keyword And Return Status    Page Should Contain    I'm not a robot
    Run Keyword If    ${robot_check}    Click Element    ${check_box}

    ${Priv}    Run Keyword And Return Status    Page Should Contain    Privacy and Consent *
    Run Keyword If    ${Priv}    Click Element    ${privacy_check}

    Click Element    ${sub_btn}
