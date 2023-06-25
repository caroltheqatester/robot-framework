*** Settings ***
Documentation    This suite tests Positive Logins on Swag Lab website
Resource         ../Resources/login_keywords.robot
Test Setup       Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Scenario: Test Case #1: Positive Login with username and password
    [Documentation]    This case tests the positive login of Swag Lab page
    [Tags]             Login
    Given I'm on the Swag Lab Login page
    When I enter the username and the password
    And I click on the Login button
    Then I should Successfully logging into the system