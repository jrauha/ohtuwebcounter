*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa

When reset button pressed the counter is zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

When set button pressed the counter is set
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa