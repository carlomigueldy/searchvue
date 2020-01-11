*** Settings ***
Documentation   To test if Google search results contains Vue js
Suite Teardown  Close Browser
Resource        resource.robot

*** Test Cases ***
Search Result 
    Open Browser to Google Search Engine
    Input Search Query      Vue js
    Submit Query 
    Has Vue