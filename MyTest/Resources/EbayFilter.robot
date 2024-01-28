*** Settings ***
Library  SeleniumLibrary
Variables    Libraries/BrowserInfo.py

*** Variables ***
${Search}  Towel

*** Keywords ***
Filter the product
    Element Should Be Visible    //*[contains(text(),' results for ')]//span[contains(text(),'${Search}')]    3
    Wait Until Element Is Visible    //span[@class='btn__cell']/span[contains(text(),'Condition')]
    Mouse Over    //span[@class='btn__cell']/span[contains(text(),'Condition')]
    Mouse Down    //span[@class='btn__cell']/span[contains(text(),'Condition')]
    Mouse Up    //span[@class='btn__cell']/span[contains(text(),'Condition')]
    Click Element    //*[@id="s0-53-16-5-4[0]-64[1]-19-content-menu"]/li[2]/a
    Wait Until Page Contains Element   //*[@id="s0-53-16-5-4[0]-64[1]-19-content-menu"]/li[2]/a/span/span[2]
    Page Should Contain    results for Towel