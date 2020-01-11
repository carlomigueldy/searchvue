*** Settings ***
Documentation       Search vue resource
Library             Selenium2Library

*** Variables ***
${URL}          https://google.com 
${BROWSER}      Chrome
${DELAY}        0

*** Keywords ***
Open Browser to Google Search Engine
    Open Browser    ${URL}  ${BROWSER}
    Set Selenium Speed  ${DELAY}

Input Search Query
    [Arguments]     ${QUERY}
    Input Text      //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input     ${QUERY}

Submit Query 
    Press Keys    //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input      ENTER

Has Vue
    Page Should Contain    vue