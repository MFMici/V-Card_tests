Feature: Send money page
As a user
I want to send money

#Beware "GoToSendMoneyFromDashboard" scenario sometimes randomly fails, if it does, try again please
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

   
	  