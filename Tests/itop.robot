*** Settings ***
Documentation  Itop Test Suite

Resource    ../Resources/itop.robot
Resource    ../Resources/common.robot

*** Test Cases ***
Login OK
    [Documentation]     this a test for login happy path
    [Tags]  test suite

    common.Begin web test
    itop.Login happy path
    common.End web test


Login KO
    [Documentation]     this a test for login unhappy path
    [Tags]  test suite

    common.Begin web test
    itop.Login unhappy path
    common.End web test
