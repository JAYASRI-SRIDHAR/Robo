*** Settings ***
Library  SeleniumLibrary
Variables    Libraries/BrowserInfo.py
Library  Libraries/function.py
Resource    Resources/EbaySearchPage.robot
Resource    Resources/EbayFilter.robot
Test Setup    Open Browser    ${ebayurl}  ${browsergc}  ${gcpath}
Test Teardown    Close Browser

*** Variables ***


*** Test Cases ***
Prod Search and Filter
    [Documentation]    Simple Filter
    [Tags]    functional
    Ebay Search

*** Keywords ***
Ebay search
    Maximize Browser Window
    Set Screenshot Directory    Results
    Search for product
    Capture Page Screenshot
    Filter the product
