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
	
@VerifyIfTransactionExpenseIsShown
Scenario: Send money and verify if transaction (expense) is shown on page (on dashboard)
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
  
@VerifyIfTransactionIncomeIsShown
Scenario: Receive money and verify if transaction (income) is shown on page (on dashboard)
Given I sucessfully login into V-Card as 911 222 333
	When I click on the "Send money" button
	And I see the text "Send Money"
	And I insert "910000091" in the phone field
	And I insert "1" in the payment field
	And I insert "teste!" in the message field
	And I click on the "Send Payment" button
  And I insert "9" in Confirmation Modal
	And I click on the "Confirm" button
	And I click on the "OK" button
  And I close the browser
  And I sucessfully login into V-Card
  Then I see the text "segundos"
  And I see the text "mais"
  And I close the browser


#Problem inserting date in Date Picker
#@StartDateBiggerThanEndDate
#Scenario:Start Date Bigger Than End Date
		#Given I sucessfully login into V-Card
		#When I click on the "Transacations" button
		#And I see the text "Transactions"
		#And I insert "08122023" in Date Picker
		#And I insert "07122023" in Date Picker
		#And I click on the "Filter By Date Range" button
		#And I see the text "Start date must be before end date"	
		#And I close the browser

#Problem inserting date in Date Picker
#@FilterByDateRange
#Scenario: Filter By Date Range
		#Given I sucessfully login into V-Card
		#When I click on the "Transactions" button
		#And I see the text "Transactions"
		#And I insert "05122023" in Date Picker
		#And I insert "08122023" in Date Picker
		#And I click on the "Filter By Date Range" button
		#And I see the text "05/12/23"
		#And I close the browser

