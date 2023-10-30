*** Settings ***
Library        Browser
Resource       ../resources/server-rest-front.resource

*** Test Cases ***
Successfully log in
    Open page
	Access site