*** Keywords ***
Open Example Website
    Open Browser    https://www.example.com    Chrome
    Title Should Be    Example Domain
    Close Browser
