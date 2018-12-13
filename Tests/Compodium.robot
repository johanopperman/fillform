*** Settings ***
Documentation  Testing Compodium
Resource  ../Resources/CompodiumApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown   End Web Test

#robot -d Results Tests/Compodium.robot

*** Variables ***
${URL}=  http://compendiumdev.co.uk/selenium/basic_html_form.html
${BROWSER}=  Chrome


*** Test Cases ***
Should be able to Capture a form
    [Documentation]  Fill out form
    [Tags]  Fill form
    Compodiumapp.Fill out the form
