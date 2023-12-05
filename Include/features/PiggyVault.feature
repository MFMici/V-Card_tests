Feature: Piggy Vault Page
As a user
I want to use piggy vault


@GoToPiggyVaultFromDashboard
Scenario: Go to piggy vault page from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		Then I close the browser
		
@GoToWithDrawMoney
Scenario: Go to withDraw Money page
		Given I sucessfully register a V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Withdraw Money" button
		And I see the text "Withdraw Money"
		Then I close the browser
		
@GoToDepositMoney
Scenario: Go to withDraw Money page
		Given I sucessfully register a V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Deposit Money" button
		And I see the text "Deposit Money"
		Then I close the browser
