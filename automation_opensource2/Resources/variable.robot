*** Settings ***
Library     SeleniumLibrary
Resource    login_key.robot
*** Variables ***
${url}      https://demowebshop.tricentis.com/
${browser}      chrome
${create_acc}   //*[@href='/register']
${gender}   //*[@id='gender-male']
${Name}     //*[contains(@name,'FirstName')]
${LName}    //*[contains(@name,'LastName')]
${Email}    //*[contains(@id,'Email')]
#${Login_id}     //*[contains(@name,'Login1')]
${Reg_Pass}     //*[contains(@id,'Password')]
${Re_type_pass}     //*[contains(@id,'ConfirmPassword')]
${submit_btn}       //input[@id='register-button']
${login}    //a[@href='/login']
${log_out}   //a[@href='/logout']
${RememberMe}      //*[contains(@id,'RememberMe')]
${login_btn}    //*[contains(@class,'login-button')]