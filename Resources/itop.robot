*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Login happy path
    input text  id= user    admin
    input password  id= pwd  admin
    click button  css=#login > form > table > tbody > tr:nth-child(3) > td > span > input[type=submit]
    wait until page contains    text=Welcome
    sleep   5s

Login unhappy path
    input text  id= user    admin
    input password  id= pwd  admin2
    click button  css=#login > form > table > tbody > tr:nth-child(3) > td > span > input[type=submit]
    wait until page contains    text=Incorrect login/password, please try again
    sleep   15s
