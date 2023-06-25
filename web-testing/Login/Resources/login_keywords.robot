*** Settings ***
Library                              SeleniumLibrary
Resource                             ../../Global/Variables/global_variables.robot
Resource                             ./login_variables.robot

*** Keywords ***
Open the browser
    Open Browser                     browser=${BROWSER}    options=add_experimental_option("detach", True)
    Maximize Browser Window

Close the browser
    Capture Page Screenshot
    Close Browser

Given I'm on the Swag Lab Login page
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${SWAG_LAB_LOGO_XPATH}


When I enter the username and the password
    Click Element                    locator=${USERNAME_INPUT_XPATH}
    Input Text                       locator=user-name    text=${USERNAME[0]}
    Click Element                    locator=${PASSWORD_INPUT_XPATH}
    Input Password                   locator=password    password=${PASSWORD}

When I enter the username
    Click Element                    locator=${USERNAME_INPUT_XPATH}
    Input Text                       locator=user-name    text=${USERNAME}

When I enter the password
    Click Element                    locator=${PASSWORD_INPUT_XPATH}
    Input Password                   locator=password    password=${PASSWORD}

When I enter the wrong username
    Click Element                    locator=${USERNAME_INPUT_XPATH}
    Input Text                       locator=user-name    text=${WRONG_USERNAME}


Then I should Successfully logging into the system
    Wait Until Element Is Visible    locator=${PRODUCT_SPAN_XPATH}

Then I should see the wrong data error message
    Wait Until Page Contains         text=${LOGIN_ERROR_MESSAGE}

Then I should see the password missing error message
    Wait Until Page Contains         text=${PASSWORD_REQUIRED_MESSAGE} 

Then I should see the username missing error message
    Wait Until Page Contains         text=${USERNAME_REQUIRED_MESSAGE} 



And I enter the username
    Click Element                    locator=${USERNAME_INPUT_XPATH}
    Input Text                       locator=user-name    text=${USERNAME}

And I enter the password
    Click Element                    locator=${PASSWORD_INPUT_XPATH}
    Input Password                   locator=password    password=${PASSWORD}

And I click on the Login button
    Click Button                     locator=${LOGIN_BUTTON_XPATH}

And I enter the wrong password
    Click Element                    locator=${PASSWORD_INPUT_XPATH}
    Input Password                   locator=password    password=${WRONG_PASSWORD}