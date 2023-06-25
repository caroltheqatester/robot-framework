*** Settings ***
Library                              SeleniumLibrary

*** Variables ***
${BROWSER}                           chrome
${URL}                               https://www.saucedemo.com/
${SWAG_LAB_LOGO_XPATH}               //div[@class='login_logo'][contains(.,'Swag Labs')]
${PRODUCT_SPAN_XPATH}                //span[@class='title'][contains(.,'Products')]
${CATEGORY_VENDA_H1_TRUE_PATH}       //h1[@class='heading align-start font-size-xxlarge color-squid-ink ember font-heavy'][contains(.,'Venda na Amazon com mensalidade GRÁTIS por 1 ano')]