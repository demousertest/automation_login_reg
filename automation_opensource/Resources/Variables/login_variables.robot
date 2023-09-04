*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${login_browser}    chrome
${login_url}      https://practicetestautomation.com/practice-test-login/
${login_url1}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${user_name}     //*[@name='username']
${login_pass}     //*[@name='password']
${login_submit}   //*[@id='submit' or contains(@class,'orangehrm-login-button')]
${logout_btn}   //a[contains(@class, 'wp-block-button__link')]
