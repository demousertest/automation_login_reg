*** Settings ***
*** Variables ***
${first_name}   //*[@name = 'first_name']
${last_name}    //*[@name = 'last_name']
${email}    //*[contains(@name, 'email')]
${password}     //*[contains(@name, 'pass')]
${phone_num}    //*[contains(@name, 'phone')]
${gender}   //*[text()='Gender']/../ul/li
${select_gen}   //*[text()='Gender']/../ul/li/input
${address_line1}    //*[contains(@placeholder,'Address')]
${address_line2}    //*[contains(@placeholder,'Address Line')]
${city}     //*[contains(@placeholder,'City')]
${state}    //*[contains(@placeholder,'State')]
${postal}   //*[contains(@placeholder,'Postal')]
${country_options}  //*[contains(@data-id,'country')]
${all_country}  //*[contains(@data-id,'country')]/option[@value='AS']