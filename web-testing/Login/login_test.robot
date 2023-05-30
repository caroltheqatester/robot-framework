*** Settings ***
Documentation    This suite tests Login on Swag Lab website
Resource         login_resources.robot
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

Scenario: Test Case #2: Negative Login with username only
    [Documentation]    This case tests when trying to login with the username only
    [Tags]             Login
    Given I'm on the Swag Lab Login page
    When I enter the username
    And I click on the Login button
    Then I should see the password missing error message

Scenario: Test Case #3: Negative Login with password only
    [Documentation]    This case tests when trying to login with the password only
    [Tags]             Login
    Given I'm on the Swag Lab Login page
    When I enter the password
    And I click on the Login button
    Then I should see the username missing error message

Scenario: Test Case #4: Negative Login with wrong username 
    [Documentation]    This case tests for incorrect username when logging in 
    [Tags]             Login
    Given I'm on the Swag Lab Login page
    When I enter the wrong username
    And I enter the password
    And I click on the Login button
    Then I should see the wrong data error message

Scenario: Test Case #5: Negative Login with wrong password 
    [Documentation]    This case tests for incorrect password when logging in 
    [Tags]             Login
    Given I'm on the Swag Lab Login page
    When I enter the username
    And I enter the wrong password
    And I click on the Login button
    Then I should see the wrong data error message