@FooterLogin @regression
Feature: Test Customer portal and managemenegt portal website

   @LoginCustomerPortal @Smoke  @loginCustomer_smoke_002 
    Scenario Outline: Verify the successful Login of an already created user. (By entering the user credentials)
    Given User visits the website "Customer"
   # Given User visits the website "DevCp"
    When User inserts the Username "<cred>"
    And User inserts the password "<cred>"
    And User clicks on login button
    When User inserts validation code "<cred>"
    And User clicks on complete button
    Then Verify User is on home page
    Examples:
    |cred        |
    | loginCred  | 

   @LoginPageCustomerElements @Smoke @loginCustomer_smoke_001  @loginCustomer_smoke_003  @loginCustomer_smoke_004  @loginCustomer_smoke_005
    Scenario Outline: User logins successfully and Verify all elements of the Login Page. (buttons,links,fields,etc)
    Given User visits the website "Customer"
    Then User reaches on page "<pageTitle>"
    And User verifies the presence of all elements on login page
    Then User reaches on page "<pageTitle>"
    When User clicks on contact us link
    Then User reaches on page "<ContactpageTitle>"
    And User navigate back to login page
    When User clicks on terms condition link
    Then User reaches on page "<TermpageTitle1>"
    And User navigate back to login page
    When User clicks on privacy policy link on page
    Then User reaches on page "<PrivacypageTitle2>"
    When User clicks on contact us link
    Then User enters the value and press cancel button
    Then User enters the value and press submit button
    When User clicks on terms condition link
    When User clicks on privacy policy link on page
    And User navigate back to login page
    And User close other windows
    Examples:
      |ContactpageTitle       |TermpageTitle1        |PrivacypageTitle2   |pageTitle   |
      |Contact Us - CCM       |Terms of Use - CCM    |Privacy Policy - CCM|Login - CCM |



  @ForgotPassword1 @Smoke  @loginCustomer_smoke_006
  Scenario Outline: Verify the Forget Password functionality.
    Given User visits the website "Customer"
    Then User reaches on page "<pageTitle>"
    When User clicks on forgot password link from login page
    Then User reaches on page "<pageTitle1>"
    And User enters email address "<email>"
    Then User clicks on submit button
    And User verifies alert message
    Examples:
      | email                         | pageTitle   | pageTitle1            |
      | Muhammad.jawad+6@arpatech.com | Login - CCM | Forgot Password - CCM |







  

 