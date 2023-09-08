*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${left_menu}    //ul[contains(@class,'ant-menu-light')]/li//a
${bar_icons}    //span[@class='ant-menu-title-content']/a
${daily}      (//input[@class='ant-radio-button-input']/..)[1]
${weekly}      (//input[@class='ant-radio-button-input']/..)[2]
${montly}      //input[@value= 'M']
${add_task}     //button[contains(@class,' ant-btn-primary')]
${start_time}   (//span[@class='ant-select-selection-item'])[1]
${mrng_time}    (//div[@class='ant-select-item-option-content'])[text()='9:00 am']

#${mrng_time}     //div[@class='rc-virtual-list-holder-inner']/div/div
${end_time}   (//span[@class='ant-select-selection-item'])[2]
${evening_time}     (//div[@class='ant-select-item-option-content'])[text()='6:00 pm']
#${end_time}     //div[@class='rc-virtual-list-holder-inner']/div/div

#//div[contains(@class,'ant-radio-group')]/label/span[position() mod 2 = 1]/input

${project_bar}      //input[@id='basic_tasks_0_projectId']
${task_type}    (//div[@class='ant-select-item-option-content'])[text()='Rampup_Software Services - Terralogic']
${Task_bar}     //input[@placeholder='Enter the task name']
${description}      //*[@placeholder='Enter the description']
${submit_btn}       //button[@form='myForm']

${timesheet}    //div[@class='ant-row ant-row-top']
${edit_img}     //div[@class='actionsButton___12SV-']/img[contains(@src,'edit')]
${Ramp}     //span[text()='Rampup_Software Services']
${delete_img}   //div[@class='actionsButton___12SV-']/img[contains(@src,'delete')]
${del_yes_per}      //div[text()='Yes']/../..