*** Settings ***
Library    DatabaseLibrary

*** Variables ***
${DB_HOST}    localhost
${DB_NAME}    test_db
${DB_USER}    user
${DB_PASSWORD}    password

*** Test Cases ***
Check User Data in Database
    Connect To Database    pymysql    ${DB_HOST}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}
    ${query}=    SELECT * FROM users WHERE id=1;
    ${result}=    Execute SQL    ${query}
    Should Not Be Empty    ${result}
    Disconnect From Database

