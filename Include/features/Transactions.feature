Feature: View transactions page
As a user
I want to see my transactions

@GoToTransactions
Scenario: Get to the add transactions
		Given I sucessfully register a V-Card
		When I click on the "Transacations" button
		And I see the text "Transactions"
		Then I close the browser
	
@ApplyFilterValueDesc
Scenario: Apply the value desc filter
	Given I sucessfully login into V-Card
	When I click on the "Transacations" button
	And I see the text "Transactions"
	Then I click on the "Value DESC" button
	And I close the browser
	
@ApplyFilterValueAsc
Scenario: Apply the value desc filter
	Given I sucessfully login into V-Card
	When I click on the "Transacations" button
	And I see the text "Transactions"
	Then I click on the "Value ASC" button
	And I close the browser
