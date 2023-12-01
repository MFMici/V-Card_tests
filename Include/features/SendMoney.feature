Feature: Send money page
As a user
I want to send money

@GoToSendMoneyFromDashboard
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
		Then I close the browser
		
