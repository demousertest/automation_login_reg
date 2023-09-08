*** Settings ***
Library     SeleniumLibrary
Library    DateTime
Library    Collections
Library    String
Library    ./comman_variables.robot

*** Variables ***
*** Test Cases ***
test_date
    ${current_date}    Get Current Date    result_format=%Y-%m-%d
    Log To Console    ${current_date}
    ${date_parts}    Split String    ${current_date}    -
    ${year}    Convert To Integer    ${date_parts[0]}
    ${month}    Convert To Integer    ${date_parts[1]}
    ${day}    Convert To Integer    ${date_parts[2]}

    ${upcoming_dates}    Create List
    FOR    ${i}    IN RANGE    1    8
        Log To Console    ${i}
        Click Element
#        ${next_day}    Set Variable    ${year}-${month}-${day}+${i}
#        ${test_day}   Evaluate     datetime.datetime.strptime('${next_day}', '%Y-%m-%d').strftime('%A')
#        Log To Console    ${test_day}
#
##        ${weekday}    Run Keyword   Get Day Of Week    ${current_date}
##        ${weekday}    Get Weekday Name    ${next_day}
#        Append To List      ${upcoming_dates}   ${next_day}

    END
#    FOR    ${i}    IN RANGE    1    8    # Get today and the next 7 days
#        ${next_date}    Add Time To Date    ${current_date}    ${i} days
#        Append To List    ${upcoming_dates}    ${next_date.strftime(%Y-%m-%d)}
#    END
    Log To Console    ${upcoming_dates}