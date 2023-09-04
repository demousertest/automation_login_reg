*** Settings ***
*** Variables ***

${url}  https://demo.wpeverest.com/user-registration/customer-onboarding-form/
${url1}  https://demo.wpeverest.com/user-registration/new-customer-registration-form/
${browser}  chrome

${title_option}  //*[@data-label='Title']
${select_title}     //*[@data-label='Title']/option


${about_details}    //*[contains(@name,'textarea')]
${promotional_yes}      //*[contains(@value,'Yes')]
${com_details}      //*[@data-label='Company:']
${industry_details}      //*[@data-label='Industry:']
${job_details}      //*[@data-label='Job Function:']
${dep_details}      //*[@data-label='Department:']
${check_box}    //div[contains(@class,'recaptcha-checkbox-border')]/..

#${check_box}        (//div[@class="rc-anchor-content"]//span)[1]
${privacy_check}    //*[@type='checkbox']

${sub_btn}      //button[@type='submit']
