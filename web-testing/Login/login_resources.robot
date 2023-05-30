*** Settings ***
Library                              SeleniumLibrary

*** Variables ***
${BROWSER}                           chrome
${URL}                               https://www.saucedemo.com/
${SWAG_LAB_LOGO_XPATH}               //div[@class='login_logo'][contains(.,'Swag Labs')]
${USERNAME_INPUT_XPATH}              //input[contains(@placeholder,'Username')]
${USERNAME}                          standard_user
${PASSWORD_INPUT_XPATH}              //input[contains(@placeholder,'Password')]
${PASSWORD}                          secret_sauce
${LOGIN_BUTTON_XPATH}                //input[contains(@type,'submit')]
${PRODUCT_SPAN_XPATH}                //span[@class='title'][contains(.,'Products')]

${WRONG_USERNAME}                    locked_out
${WRONG_PASSWORD}                    wrong_pass
${LOGIN_ERROR_MESSAGE}               Epic sadface: Username and password do not match any user in this service

${USERNAME_REQUIRED_MESSAGE}            Epic sadface: Username is required
${PASSWORD_REQUIRED_MESSAGE}            Epic sadface: Password is required



${CATEGORY_VENDA_H1_TRUE_PATH}       //h1[@class='heading align-start font-size-xxlarge color-squid-ink ember font-heavy'][contains(.,'Venda na Amazon com mensalidade GRÁTIS por 1 ano')]


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
    Input Text                       locator=user-name    text=${USERNAME}
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