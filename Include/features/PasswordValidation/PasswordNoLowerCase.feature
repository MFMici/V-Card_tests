Feature: Validate Password for Absence of Lowercase Letter
  As a User
  I want to create a V-Card account

  Scenario: No lowercase characters in password validation during registration
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "913322333" in the phone field
    And I insert "MICAEL1@" in the password field
    Then I see the text "Password must contain at least one lowercase letter"
    And I close the browser
