*** Settings ***
Library  SeleniumLibrary
Variables    Libraries/BrowserInfo.py
Library  Libraries/function.py

*** Variables ***
${Search}  Towel

*** Keywords ***
Search for product
    Input Text    //input[@type="text"]  ${Search}  10
    Press Keys    //input[@type="submit"]  RETURN
