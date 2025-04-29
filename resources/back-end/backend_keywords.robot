*** Keywords ***
Connect To Test Database
    Connect To Database    pymysql    ${DB_HOST}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}
    
Check Data In Table
    [Arguments]    ${table}    ${column}    ${value}
    ${query}=    SELECT * FROM ${table} WHERE ${column}=${value};
    ${result}=    Execute SQL    ${query}
    Should Not Be Empty    ${result}
