*** Settings ***
Library     AppiumLibrary
Library     BuiltIn
Library    XML
Library    Telnet
Library    OperatingSystem
Library     String
Library    Process
Library     FakerLibrary

*** Variables ***
${port}         http://localhost:4723/wd/hub
${platform}     Android
${device}       5613cebd
${appPackage}   com.sandata.mvvhybrid.qa
${appActivity}  com.sandata.mvvhybrid.qa.MainActivity
${User_Name}    //android.widget.EditText[@resource-id='inputUserName']
${Password}     //android.widget.EditText[@resource-id='inputPassword']
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
${Expected_text}        PAYOR PROGRAMClient ID #: 553577MEDICAID ID #: 646589658643465964389526 Harbor Park DrApt # 1234Port Washington, NY 11050-0000
${client_Id}            553577

*** Keywords ***
OpenApp

        Open Application    ${port}
        ...                 platformName=${platform}
        ...                 deviceName=${device}
        ...                 appPackage=${appPackage}
        ...                 appActivity=${appActivity}


Verify_required_field_accept_blank_value

        OpenApp
        Wait Until Page Contains Element    ${Location_Allow}   10s
        Click Element    ${Location_Allow}
        Wait Until Page Contains Element    ${Login_in}
        Click Element    ${Login_in}
        Wait Until Page Contains Element    ${Call}
        Click Element    ${Call}
        Capture Page Screenshot
        Sleep    5


Invalid_Username_and_Invalid_Password


        Wait Until Page Contains Element    ${Company_id}
        Clear Text    ${Company_id}
        Input Text    ${Company_id}    2-165021
        Clear Text    ${User_Name}
        Input Text    ${User_Name}      ertgbnjiuyg
        Clear Text    ${Password}
        Input Text    ${Password}    Testing0001#
        Click Element    ${Login_in}
        Wait Until Page Contains Element    ${Information}
        Capture Page Screenshot
        Click Element    ${Information}
        Sleep    3


Invalid_Username_and_Valid_Password


        Wait Until Page Contains Element    ${Company_id}
        Clear Text    ${Company_id}
        ${cus}          Cus Id
        Input Text    ${Company_id}    ${cus}
        Clear Text    ${User_Name}
        ${id}   User Email
        Input Text    ${User_Name}      ${id}
        Clear Text    ${Password}
        ${pas}      Password
        Input Text    ${Password}    ${pas}
        Click Element    ${Login_in}
        Wait Until Page Contains Element    ${Information}
        Capture Page Screenshot
        Click Element    ${Information}
        Sleep    3


Valid_Username_and_Invalid_Password

        Wait Until Page Contains Element    ${Company_id}
        Clear Text    ${Company_id}
        Input Text    ${Company_id}    2-165021
        Clear Text    ${User_Name}
        Input Text    ${User_Name}       iagisfgiguidg@mailinator.com
        Clear Text    ${Password}
        Input Text    ${Password}    gygdegdygd667772#
        Click Element    ${Login_in}
        Wait Until Page Contains Element    ${Information}
        Capture Page Screenshot
        Click Element    ${Information}
        Sleep    3



Valid_Usernmae_and_Valid_Password
        OpenApp
        Wait Until Page Contains Element    ${Location_Allow}   10s
        Click Element    ${Location_Allow}
        Sleep    3
        Wait Until Page Contains Element    ${Company_id}
        Clear Text    ${Company_id}
        Input Text    ${Company_id}    2-10011
        Clear Text    ${User_Name}
        Input Text    ${User_Name}       krishankumar.mohan@mailinator.com
        Clear Text    ${Password}
        Input Text    ${Password}    Sandatacalibraint@789
        Click Element    ${Login_in}
        Wait Until Page Contains Element    ${Call}
        Click Element    ${Call}
        Wait Until Page Contains Element    ${Enable_Fingerprint}   10s
        Click Element    ${Enable_Fingerprint}
        Wait Until Page Contains Element    ${Password_Expire}      10s
        Click Element    ${Password_Expire}
        Sleep    5
        Wait Until Page Contains Element   //android.widget.RadioButton[@text="日本語"]
        FOR    ${counter}    IN RANGE    0      5
        Swipe    0    495    0    100
        ${counter}=  Set Variable  ${counter}+1               
        Exit For Loop If    ${counter}==5
        END
        Sleep    5
        Wait Until Page Contains Element  ${select}   10s
        Click Element    ${select}
        Wait Until Page Contains Element    ${Language_Confirm}
        Click Element    ${Language_Confirm}
        Wait Until Page Contains Element    ${client_search}
        Input Text    ${client_search}   ${client_Id}
        Wait Until Page Contains Element    ${search}
        Click Element    ${search}
        Sleep    5


Verify_Actual_ClientID_Equal_To_Expected_ClientID

        Wait Until Page Contains Element    ${element_search_client}  10s
        Element Should Be Visible   ${element_search_client}
        Wait Until Page Contains Element    ${result}
        Element Text Should Be    ${result}   ${Expected_text}
        Capture Page Screenshot

To_Validate_CompanyId_Useranme_password


        Verify_required_field_accept_blank_value
        FOR    ${counter}    IN RANGE    0      5
        Wait Until Page Contains Element    ${Company_id}
        Clear Text    ${Company_id}
        ${com_id}      Numerify     text=######
        Input Text    ${Company_id}    ${com_id}
        Clear Text    ${User_Name}
        ${email}      Free Email
        Input Text    ${User_Name}      ${email}
        Clear Text    ${Password}
        ${pass}         Password
        Input Text    ${Password}    ${pass}
        Click Element    ${Login_in}
        Wait Until Page Contains Element    ${Information}
        Click Element    ${Information}
        ${counter}=  Set Variable  ${counter}+1
        Exit For Loop If    ${counter}==5
        END
        Sleep    3
        Close Application





















