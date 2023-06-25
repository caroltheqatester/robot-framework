*** Settings ***
Documentation       This suite tests ServeRest API
Resource            ../Resources/api_resources.robot

*** Test Cases ***
Scenario #1: Positive registration of a new user
    [Documentation]    This case tests the creation of a new user
    [Tags]             API
    Creating a new user
    Registering a new user
