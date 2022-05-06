*** Settings ***
Library       AppiumLibrary

*** Variables ***
${Call}         //android.widget.Button[@text="ALLOW"]
${User_Name}    //android.widget.EditText[@resource-id='inputUserName']
${Password}     //android.widget.EditText[@resource-id='inputPassword']
${Company_id}   //android.widget.EditText[@resource-id='inputCompId']
${Login_in}     //android.widget.Button[@text="LOG IN"]
${Location_Allow}   //android.widget.Button[@text="ALLOW"]
${Information}  //android.widget.Button[@text="ok"]
${Enable_Fingerprint}   //android.widget.Button[@text="no"]
${Password_Expire}      //android.widget.Button[@text="continue"]
${Language_Select}      //android.widget.Button[@text="continue"]
${Language_Confirm}     //android.widget.Button[@text="confirm"]
${select}               //android.widget.Button[@text="continue"]
