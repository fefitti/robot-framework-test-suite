*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
GET Request to Posts
    ${response}=    GET    ${BASE_URL}/posts
    Should Be Equal As Numbers    ${response.status_code}    200
    Should Contain    ${response.text}    "userId"
