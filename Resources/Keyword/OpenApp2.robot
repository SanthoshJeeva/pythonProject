*** Settings ***
Library         AppiumLibrary
Library         BuiltIn


*** Variables ***

${Company_id}   //android.widget.EditText[@resource-id='inputCompId']
${Login_in}     //android.widget.Button[@text="LOG IN"]
${Call}         //android.widget.Button[@text="ALLOW"]
${Information}  //android.widget.Button[@text="ok"]
${Location_Allow}   //android.widget.Button[@text="ALLOW"]
${Enable_Fingerprint}   //android.widget.Button[@text="no"]
${Password_Expire}      //android.widget.Button[@text="continue"]
${Language_Select}      //android.widget.Button[@text="continue"]
${Language_Confirm}     //android.widget.Button[@text="confirm"]
${select}               //android.widget.Button[@text="continue"]
${client_search}        //android.widget.EditText[@resource-id='inputSearchClient']
${search}               //android.widget.Button[@text="search client"]
${result}               //android.widget.TextView[@resource-id='clientSearchResult']
${element_search_client}    //android.widget.TextView[@text="SEARCH CLIENT"]

