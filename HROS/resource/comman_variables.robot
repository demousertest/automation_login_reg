*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}    https://terralogic.paxanimi.ai/login
${browser}  chrome
${email}    //input[@placeholder='Enter your email']
${email_val}    hemant.mahawer@terralogic.com
${password_val}     Hemant123@
${password}     //input[@placeholder='Enter your password']
${check_box}    //input[@id='basic_keepSignIn']
${smt_btn}      //*[text()='Sign In']/../..
${top_menu_icons}   //div[@class='Header___1wPd_']//div[contains(@class,'Icon___bXIML')]
${drop_down}    //span[contains(@class,'ant-dropdown')]/span
${logout}   //li[contains(@class,'MenuAvatar')]
${msg_icon}     //img[@src='/static/ic_help.9945fdef.svg']/../..
${right>}   //img[@src='/static/ic_arrow_right_gray.aaf9b4aa.svg']/../../../..
${left<}    //img[@src='/static/ic_arrow_left_gray.9356641f.svg']/../../../..
