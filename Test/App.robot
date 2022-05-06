*** Settings ***
Library     FakerLibrary
Library    AppiumLibrary

*** Test Cases ***
Faker

        ${Company_id}      Numerify    text=#######
        Log To Console    ${Company_id}
        ${Username}        Free Email
        Log To Console    ${Username}
        ${Password}       Password
        Log To Console    ${Password}
        ${Client_id}       Numerify     text=#####
        Log To Console    ${Client_id}
        ${address}          Address
        Log To Console    ${address}
        ${phone_num}        Phone Number
        Log To Console    ${phone_num}











