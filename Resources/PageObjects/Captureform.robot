*** Settings ***
Library  Selenium2Library


*** Variables ***

*** Keywords ***
Start to fill out the form
  Input Text  xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[1]/td/input   Jack
  sleep  3s
  Input Text  xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[2]/td/input   12345
  sleep  3s
  Input Text  xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[3]/td/textarea   This is my comments
  sleep  3s
  Click Element  xpath=//input[@value="cb1"]
  sleep  3s
  Click Element  xpath=(//input[@name="radioval"])[2]
  sleep  3s
  Select From List By Value  xpath=//select[@name="multipleselect[]"]    ms3
  sleep  3s
  Select From List By Value  xpath=//select[@name="dropdown"]    dd5

  Click Button  xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[9]/td/input[2]
  sleep  3s

  Page Should Contain   Jack
  Page Should Contain   12345
  Page Should Contain   This is my comments
  Page Should Contain   cb1
  Page Should Contain   dd5


  Capture Page Screenshot