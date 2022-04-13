*** Settings ***
Library    SeleniumLibrary
Resource    ../../testdata/environment.robot
Resource    ../../keywords/ui/page/homepage.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Verify registration form with single single fault firstname
    [Tags]    Single_Fault_Firstname
    Open browser student registration form
    Wait student registration load complete
    Verify firstname is empty
    Input and verify lastname
    Input and verify gender with male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click study time
    Click submit application
    Verify firstname display error message
    Reload Page

    [Tags]    Single_Fault_Lastname
    Wait student registration load complete
    Verify firstname is empty
    Input and verify firstname
    Input and verify gender with male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click study time
    Click submit application
    Verify lastname display error message
    Reload Page

    [Tags]    Single_Fault_Gender
    Wait student registration load complete
    Verify firstname is empty
    Input and verify firstname
    Input and verify lastname
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click study time
    Click submit application
    Verify gender display error message
    Reload Page

    [Tags]    Single_Fault_StudentID
    Wait student registration load complete
    Verify firstname is empty
    Input and verify firstname
    Input and verify lastname
    Input and verify gender with male
    Input and verify mobile_number
    Input and verify email
    Click study time
    Click submit application
    Verify student_id display error message
    Reload Page

    [Tags]    Single_Fault_Mobile_Number
    Wait student registration load complete
    Verify firstname is empty
    Input and verify firstname
    Input and verify lastname
    Input and verify gender with male
    Input and verify student_id
    Input and verify email
    Click study time
    Click submit application
    Verify mobile display error message
    Reload Page

    [Tags]    Single_Fault_email
    Wait student registration load complete
    Verify firstname is empty
    Input and verify firstname
    Input and verify lastname
    Input and verify gender with male
    Input and verify student_id
    Input and verify mobile_number
    Click study time
    Click submit application
    Verify email display error message
    Reload Page

    [Tags]    Single_Fault_Study_Time
    Wait student registration load complete
    Verify firstname is empty
    Input and verify firstname
    Input and verify lastname
    Input and verify gender with male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click submit application
    Verify study time display error message
    Reload Page

    [Tags]    All_Input
    Wait student registration load complete
    Verify firstname is empty
    Input and verify firstname
    Input and verify lastname
    Input and verify gender with male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click study time
    Click submit application
    Verify message after click submit form
    Reload Page