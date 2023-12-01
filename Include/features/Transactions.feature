Feature: View transactions page
As a user
I want to see my transactions

@GoToTransactions
Scenario: Get to the add transactions
		Given I sucessfully register a V-Card
		When I click on the "Transacations" button
		And I see the text "Transacations"
		Then I close the browser
		
