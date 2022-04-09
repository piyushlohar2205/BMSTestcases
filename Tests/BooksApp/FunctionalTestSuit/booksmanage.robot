*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
webhome
    [Documentation]  home
    [Tags]  homepage
    start testcase
    sleep  1
    click button  xpath:/html/body/div/div/div/div/table/table/tbody/tr[1]/td/button

userlogin
    [Documentation]  userlogin
    [Tags]  userlogin
    sleep  5
    input text  name:piyushnamdeolohar
    sleep  5
    input text  name:Piyush@123
    sleep  5
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td/button
    sleep  5

EnterBookEntry
    [Documentation]  Creating new entries
    [Tags]  Creating new entries
    input text  name:Rich Dad Poor Dad
    sleep  5
    input text  name:RDPD
    sleep  5
    input text  name:Arihand
    sleep  5
    input text  name:400
    sleep  5
    input text  name:Techmax
    sleep  5
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td/button
    sleep  3


UserDetailsHandling
    [Documentation]  SearchingUsers
    [Tags]  SearchingUsers
    click element  xpath:/html/body/div/div/ul/li[2]/a
    sleep  2
    input text  name:Piyush
    sleep  1
    click button    xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  5

UserDelete
    [Documentation]  DeletingUsers
    [Tags]  DeletingUsers
    click element   xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep   2
    input text  name:Ayush11
    sleep   2
    click button    xpath:/html/body/div/div/div/div/div/form/table/tbody/tr[2]/td/button
    sleep   5

UserReedit
    [Documentation]  NewData
    [Tags]  NewData
    click element   xpath:/html/body/nav/div/div/ul/li[5]/a
    sleep   5
    input text  name:Piyush
    sleep   5
    input text  name:Blacksmith
    sleep   5
    input text  name:Arihand
    sleep   5
    input text  name:Techmax
    sleep   5
    input text  name:8888
    sleep   5
    input text  name:Techmax
    sleep   5
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[7]/td/button
    sleep   5
    click element   xpath:/html/body/nav/div/div/ul/li[7]/a
    sleep   5
    click element   xpath:/html/body/nav/div/div/ul/li[6]/a
    sleep   3


UserRegistration
    [Documentation]  userregistration
    [Tags]  userregistration
    click button  xpath:/html/body/div/div/div/table/tbody/tr[2]/td/button
    sleep  2
    input text  name:piyush
    sleep  5
    input text  name:7700003446
    sleep  5
    input text  name:bcabc@outlook.com
    sleep  5
    input text  name:Akurdi
    sleep  5
    input text  name:Piyush@080808
    sleep  5
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td/button
    sleep  5


UserLoginForm
    [Documentation]  userloginform
    [Tags]  userloginform
    input text  name:piyush@outlook.com
    sleep  6
    input text  name:Piyush@99887766
    sleep  6
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td/button
    sleep  6

*** Keywords ***
start testcase
    Open Browser  http://127.0.0.1:5000/  chrome
    maximize browser window

stop testcase
    close browser
