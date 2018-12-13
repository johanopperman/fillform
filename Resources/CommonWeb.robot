*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Begin Web Test
   open browser  ${URL}  ${BROWSER}

End Web Test
    close all browsers