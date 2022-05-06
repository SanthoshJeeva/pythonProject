*** Settings ***
Library         AppiumLibrary

*** Variables ***

${client_search}        //android.widget.EditText[@resource-id='inputSearchClient']
${search}               //android.widget.Button[@text="search client"]
${result}               //android.widget.TextView[@resource-id='clientSearchResult']
${element_search_client}    //android.widget.TextView[@text="SEARCH CLIENT"]
${Expected_text}        PAYOR PROGRAMClient ID #: 553577MEDICAID ID #: 646589658643465964389526 Harbor Park DrApt # 1234Port Washington, NY 11050-0000
${client_Id}            553577