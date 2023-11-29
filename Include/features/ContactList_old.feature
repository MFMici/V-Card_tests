Feature: View on contact list
  As a user
	I want to see a new contact

@SeeContact
Scenario: User sucessfully creates, and see his brand new contact
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "914372757" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "V-Card created with success."
    Then I click on the "Ok" button
    Then I navigate to the URL "http://localhost:8080/contacts"
#    Then I click on the "Plus" button
		Then I navigate to the URL "http://localhost:8080/new-contact"
    Then I insert "Micael" in the name field
    Then I insert "917581346" in the phone field
#    Then I click on the "Add contact" button
    Then I see the text "Sucess"
	  Then I click on the "Ok" button"
    Then I see the text "Micael"
    And I close the browser
