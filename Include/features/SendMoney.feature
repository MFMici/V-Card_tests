Feature: Send money page
As a user
I want to send money

#Beware this scenario sometimes randomly fails, if it does, try again please
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