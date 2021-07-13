*** Settings ***
#Library  SeleniumLibrary
Resource  ../Resources/Keywords/SearchPage.robot

*** Variables ***
${URL}  https://www.google.com/
${searchTerm}   Selenium

*** Test Cases ***
[TC-001] Verify If User Can Search On Google
#    Open Browser  https://www.google.com/  Chrome
#    Input Text  name=q  Selenium
    SearchPage.Open Chrome Browser  ${URL}
    SearchPage.Input Search Term   ${searchTerm}
    SearchPage.Click Google Search Button
#    Wait Until Element Is Visible  name=btnK
#    Click Element  name=btnK
    SearchPage.Click First Link Available
    SearchPage.Verify If Page Contains BLACK LIVES MATTER
    SearchPage.Close Chrome Browser
#    Click Link  https://www.selenium.dev/
#    Page Should Contain  BLACK LIVES MATTER
#    Close Browser

#*** Keywords ***
#Open Chrome Browser
#    [Arguments]  ${URL}
#    Open Browser  ${URL}  Chrome
#
#Input Search Term
#    [Arguments]  ${searchTerm}
#    Input Text  name=q  ${searchTerm}
#
#Click Google Search Button
#    Wait Until Element Is Visible  name=btnK
#    Click Element  name=btnK
#
#Click First Link Available
#    Click Link  https://www.selenium.dev/
#
#Verify If Page Contains BLACK LIVES MATTER
#    Page Should Contain  BLACK LIVES MATTER
#
#Close Chrome Browser
#    Close Browser
