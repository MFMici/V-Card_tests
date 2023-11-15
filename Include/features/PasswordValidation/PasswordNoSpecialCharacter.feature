Feature: Validate Password for Absence of special character 
  As a User
  I want to create a V-Card account

  Scenario: No special character in password validation during registration
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "913322333" in the phone field
    And I insert "Micael12" in the password field
    Then I see the text "Password must contain at least one special character"
    And I close the browser