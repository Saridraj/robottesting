*** Setting ***
Library    SeleniumLibrary
Test Teardown    Close All Browsers

*** Variable ***
${WEB_BROWSER}    chrome
${URL}    https://www.jotform.com/212934779973474  

*** Test Cases ***
submit student registration form
    Open Browser    ${URL}    ${WEB_BROWSER}  
    Input Text    //*[@id='input_48']    My First Name
    Input Text    //*[@id='input_49']    My Last Name
    Select From List By Value    //*[@id='input_3']    Male
    Input Text    //*[@id='input_14']    647201111
    Input Text    //*[@id='input_27_full']    0831647724
    ${mobile_number} =    Get Value    //*[@id='input_27_full']
    Should Be Equal    ${mobile_number}    (083) 164-7724
    Input text    //*[@id='input_6']    email@gmail.com
    Click Element    //*[@id='label_input_51_0']
    Click Button     //button[contains(text(),'Submit')]
    sleep    5
    Wait Until Element Contains    //*[@id='id_84']    Your registration has been completed