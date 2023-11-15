Feature: Blank Password
  As a User
  I want to create a V-Card account

  Scenario: Invalid/Blank Password
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "915342987" in the phone field
    And I insert "" in the password field
    Then I see the text "This field is required"
    And I close the browser
