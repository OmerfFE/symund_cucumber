Feature: As a user, I should be able to login.


  @UND1115
  Scenario: Symund login functionality verification

    Given User is on Symund login page
    When user enters valid "username"
    And user enters valid "password"
    And user clicks on the login button
    Then user gets into "homepage"

  Scenario Outline: Symund login functionality with invalid credentials
    Given user is on Symund login page
    When user enters "invalid username"
    And user enters "invalid password"
    And user clicks on the login button
    Then verify that user sees "wrong username or password"
    Examples:
      | invalid username | invalid password |
      | Employe          | Employe12        |
      | Employer         | 123456           |
      | Employer31       | Employer132      |

  Scenario: Symund no password input in password box verification
    Given user is on Symund login page
    When user does not enter either username or password
    And user click on login button
    Then verify that user sees "please fill out this field" message

  Scenario: Verification of hiding password in form of dots by default
    Given user is on Symund login page
    When user enters password
    Then verify password is seen in the form of dots by default

    Scenario: Verification of visibility of password in case of demand
      Given user is on Symund login page
      When user clicks on eye icon near the password box
      Then verify password is explicitly seen by the user

      Scenario: Verification of "Forgot password?" link and verification
        of "Reset password" button
        Given user is on Symund login page
        When user clicks on the "forgot password button"
        Then verify that user can see "Reset Password" button

       Scenario: Verification of placeholders on Username and Password fields
         Given  user is on Symund login page
         When verify that user can see "Username or email" in the username input
         Then verify that user can see "Password" in the password input





