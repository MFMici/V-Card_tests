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
	
@ApplyFilterExpenses
Scenario: Apply the expenses filter
	Given I sucessfully login into V-Card
	When I click on the "Transacations" button
	And I see the text "Transactions"
	Then I click on the "Expenses" button
	And I close the browser
	
@ApplyFilterIncomes
Scenario: Apply the incomes filter
	Given I sucessfully login into V-Card
	When I click on the "Transacations" button
	And I see the text "Transactions"
	Then I click on the "Incomes" button
	And I close the browser
	
@ApplyFilterDateAsc
Scenario: Apply the date asc filter
	Given I sucessfully login into V-Card
	When I click on the "Transacations" button
	And I see the text "Transactions"
	Then I click on the "Date ASC" button
	And I close the browser

@ApplyFilterDateDesc
Scenario: Apply the date desc filter
	Given I sucessfully login into V-Card
	When I click on the "Transacations" button
	And I see the text "Transactions"
	Then I click on the "Date DESC" button
	And I close the browser
	
@VerifyIfTransactionIsShown
Scenario: Send money and verify if transaction is shown on page
	Given I sucessfully login into V-Card
	When I click on the "Send money" button
	And I see the text "Send Money"
	And I insert "911111111" in the phone field
	And I insert "1" in the payment field
	And I insert "ola" in the message field
	And I click on the "Send Payment" button
  And I insert "0" in Confirmation Modal
	And I click on the "Confirm" button
	And I click on the "OK" button
	Then I see the text "agora"
	And I see the text "-"
  And I close the browser