Feature: Create new contact
  As a user
	I want to create a new contact

Scenario: User gets an error when attempting to create a new contact without a name
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "915342387" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "V-Card created with success."
    Then I click on the "Ok" button
		Then I navigate to the URL "http://localhost:8080/new-contact"
		Then I insert "Micael" in the name field
		Then I insert "" in the name field
    Then I see the text "This field is required"
    And I close the browser
		