*** Settings ***
Library  SeleniumLibrary
Variables    Libraries/BrowserInfo.py
Library  Libraries/function.py
#Test Setup    Open Browser    ${gcurl}  ${browsergc}  ${gcpath}
#Test Teardown    Close Browser
*** Variables ***
${my_var}     my_value
@{my_list}    Apple    Banana    Orange

*** Test Cases ***
This is a simple testcase
    [Documentation]    Google Search
    [Tags]    functional

    ${texttds}    function.add   ${1}
    Open Browser    ${gcurl}  ${browsergc}  ${gcpath}
    Input Text    //textarea[@class='gLFyf']   ${texttds}
    Capture Page Screenshot
    Press Keys   //div[@class='FPdoLc lJ9FBc']//input[@value='Google Search']   RETURN
    Wait Until Page Contains    //div[@id='result-stats' and contains(text(),'results')]
    Close Browser

*** Keywords ***
Search something as follows
    [Documentation]    Google Search1







