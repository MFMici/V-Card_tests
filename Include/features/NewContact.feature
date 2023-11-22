Feature: Create new contact
  As a user
	I want to create a new contact

@ErrorInvalidName
Scenario: User gets an error when attempting to create a new contact without a name
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "913362357" in the phone field
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
		
@Sucess
Scenario: User sucessfully adds a new contact to their contact list
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "913536222" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "V-Card created with success."
    Then I click on the "Ok" button
		Then I navigate to the URL "http://localhost:8080/new-contact"
		Then I insert "Micael" in the name field
		Then I insert "911111111" in the phone field
		#And I click on the "Add contact" button
		
@ErrorInvalidPortugueseNumber
Scenario: User gets an error when attempting to create a new contact without a name
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "912542337" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "V-Card created with success."
    Then I click on the "Ok" button
		Then I navigate to the URL "http://localhost:8080/new-contact"
		Then I insert "9" in the phone field
    Then I see the text "Invalid Portuguese phone number"
    And I close the browser