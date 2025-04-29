*** Keywords ***
Send GET Request
    [Arguments]    ${endpoint}
    ${response}=    GET    ${BASE_URL}${endpoint}
    [Return]    ${response}
