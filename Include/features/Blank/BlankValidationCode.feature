Feature: Invalid Verification Code
  As a User
  I want to create a V-Card account

  Scenario: Invalid Confirmation Alert
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "915342987" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I insert " " in Confirmation Modal
    Then I see the text "This field is required"
    And I close the browser
