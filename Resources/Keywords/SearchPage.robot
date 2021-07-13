*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PageObject/SearchPage.robot

#*** Variables ***
#${txtSearch}  name=q
#${btnGoogleSearch}  name=btnK

*** Keywords ***
Open Chrome Browser
    [Arguments]  ${URL}
    Open Browser  ${URL}  Chrome

Input Search Term
    [Arguments]  ${searchTerm}
    Input Text  ${txtSearch}  ${searchTerm}

Click Google Search Button
    Wait Until Element Is Visible  ${btnGoogleSearch}
    Click Element  ${btnGoogleSearch}

Click First Link Available
    Click Link  https://www.selenium.dev/

Verify If Page Contains BLACK LIVES MATTER
    Page Should Contain  BLACK LIVES MATTER

Close Chrome Browser
    Close Browser