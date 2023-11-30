Feature: Create new contact
  As a user
	I want to create a new contact

@ErrorInvalidName
Scenario: User gets an error when attempting to create a new contact without a name
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "914372757" in the phone field
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
    And I insert "915566622" in the phone field
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
    And I insert "915545337" in the phone field
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
    ###
@AlreadyExistingContact
Scenario: User gets an error when attempting to create a contact with a previous used phone number
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "915442587" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "V-Card created with success."
    Then I click on the "Ok" button
    Then I navigate to the URL "http://localhost:8080/new-contact"
    Then I insert "Micael" in the name field
    Then I insert "917581346" in the phone field
    Then I click on the "Add contact" button
    Then I see the text "Sucess"
    #Then I click on the "Ok" button"
    Then I click on the "Add contact" button
    Then I see the text "Error"
    #Then I click on the "Ok" button"
    And I close the browser