Feature: As a user, I should be able to log out.

  @UND-1116
  Scenario: Symund logout functionality verification
    Given user is logged in
    When user click on "log out" button
    Then verify that the process ends with returning back to login page

    Scenario: Verification of not being able to go back to homepage once looged out
      Given user logged out
      When user clicked step back button
      Then verify that user cannot go back to homepage
