*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Call list oof user from jsonplaceholder
    Create Session  api  https://jsonplaceholder.typicode.com
    ${resrponse}=  Get Request  api  /users
    Log To Console  ${resrponse}
    Should Be Equal  ${200}  ${resrponse.status_code}
    ${len}=  Get Length  ${resrponse.json()}
    Should Be Equal  ${10}  ${len}
    Should Be Equal  Bret  ${resrponse.json()[0]["username"]}