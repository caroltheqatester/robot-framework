*** Settings ***
Library                    RequestsLibrary
Library                    String

*** Keywords ***
Create Session on ServeRest
    ${HEADER}              Create Dictionary             accept=application/json        Content-Type=application/json
    Create Session         alias=ServeRest               url=https://serverest.dev      headers=${HEADER}
Creating a new user
    ${RANDOM_USER}         Generate Random String        chars=[LETTERS]
    ${RANDOM_USER}         Convert To Lower Case         ${RANDOM_USER}
    Set Test Variable      ${EMAIL_TEST}                 ${RANDOM_USER}@test.com
    Log                    Random word: ${EMAIL_TEST}

Registering a new user
    ${BODY}                Create Dictionary    
    ...                    nome=John Doe    
    ...                    email=${EMAIL_TEST}    
    ...                    password=123456    
    ...                    administrador=true
    Log                    ${BODY}
    Create Session on ServeRest
    ${RESPONSE}            POST On Session               
    ...                    alias=ServeRest
    ...                    url=/usuarios
    ...                    json=${BODY}
    Log                    ${RESPONSE.json()}