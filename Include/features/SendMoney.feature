Feature: Send money page
As a user
I want to send money

#Beware in all scenarios of this feature file Katalon sometimes can't capture the "And I see the text "Send money". 
#If it happens, please try again.
#Preferable would be to comment each of those lines to avoid 100% any error.

@GoToSendMoneyFromDashboard
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
		Then I close the browser
		
@GoToSendMoneyEmpty
Scenario: Verify that all fields are empty
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
		And I verify that "Phone" is empty
		And I verify that "Payment" is empty
		And I verify that "Message" is empty
		Then I close the browser
		
@FailToSendMoneyInvalidPhoneNumberFieldRequired
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
	  And I insert "915342987" in the phone field
	  And I insert " " in the phone field
	 	Then I see the text "This field is required"
	 	And I close the browser
	  
@FailToSendMoneyInvalidPhoneNumberNotPortuguese
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
	  And I insert "123321123" in the phone field
	  Then I see the text "Invalid Portuguese phone number"
	 	And I close the browser
	 	
@FailToSendMoneyInvalidPhoneNumberNotLongEnough
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
		And I insert "91234212" in the phone field
		Then I see the text "Invalid phone number, it should contain 9 digits"
	 	And I close the browser

@FailToSendMoneyContactIsNotVCardUser
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send Money"
		And I insert "912455432" in the phone field
		And I insert "5" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		Then I see the text "This contact is not a V-Card user yet"
		And I click on the "OK" button
	 	And I close the browser
   
@FailToSendMoneyWrongPINCodeNotNumber
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send Money"
		And I insert "912455432" in the phone field
		And I insert "5" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
    And I insert "a" in Confirmation Modal
    Then I see the text "This field must be a number"
    And I close the browser
   
	  
	  
	  