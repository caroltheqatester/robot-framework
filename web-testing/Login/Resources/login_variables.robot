*** Settings ***
Library                              SeleniumLibrary
Resource                             ../../Global/Variables/global_variables.robot

*** Variables ***
${USERNAME_INPUT_XPATH}              //input[contains(@placeholder,'Username')]
@{USERNAME}                          standard_user    locked_out_user    problem_user    performance_glitch_user
${PASSWORD_INPUT_XPATH}              //input[contains(@placeholder,'Password')]
${PASSWORD}                          secret_sauce
${LOGIN_BUTTON_XPATH}                //input[contains(@type,'submit')]


${WRONG_USERNAME}                    locked_out
${WRONG_PASSWORD}                    wrong_pass
${LOGIN_ERROR_MESSAGE}               Epic sadface: Username and password do not match any user in this service

${USERNAME_REQUIRED_MESSAGE}            Epic sadface: Username is required
${PASSWORD_REQUIRED_MESSAGE}            Epic sadface: Password is required