Feature: Check password lenght
  As a User
  I want to create a V-Card account

  Scenario: Invalid password lenght through registration
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "913322333" in the phone field
    And I insert "Mi@1" in the password field
    Then I see the text "Password must be at least 8 characters long"
    And I close the browser
