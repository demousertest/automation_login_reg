*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${quick_link}    //span[text()='Quick Links']/../../..
${close_quick}      //button[@aria-label='Close']
${noti_bar}     //img[@src='/static/ic_bell.1b1c1f80.svg']/../..
${theme_bar}    //img[@src='/static/ic_theme.f154d3ae.svg']/../..
${dark_btn}     //span[text()='Dark']/..
${language}     //div[@Class='ant-dropdown-trigger languageSelector___2zxz0']
${in_en}    //span[contains(text(),'India')]/../../..