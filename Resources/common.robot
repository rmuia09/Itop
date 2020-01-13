*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  gc
${LOGINURL}  http://localhost:8163/iTop-2.6.1-4463/web/pages/UI.php

*** Keywords ***
[Documentation]

Begin web test
    Open Browser    ${LOGINURL}    ${BROWSER}

End web test
    close browser

