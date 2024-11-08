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
		
@ViewAllPiggyVault		
Scenario: Go to piggy vault page from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "View all" button
		And I see the text "View less"
		Then I close the browser
		
@NoMoneyToDeposit
Scenario: Error on deposit money
		Given I sucessfully register a V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Deposit Money" button
		And I see the text "Deposit Money"
		And I insert "5" in the deposit quantity
		And I click on the "Send Payment" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "You dont have enough money in your spendable balance to make this transfer"
		Then I close the browser
		
@NoMoneyToWithdraw
Scenario: Error on withdraw money
		Given I sucessfully register a V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Withdraw Money" button
		And I see the text "Withdraw Money"
		And I insert "5" in the deposit quantity
		And I click on the "Send Payment" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "You dont have enough money in your deposit to make this transfer"
		Then I close the browser
		
@DepositSuccess
Scenario: deposit success
		Given I sucessfully login into V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Deposit Money" button
		And I insert "5" in the deposit quantity
		And I click on the "Send Payment" button
		And I insert "0" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "It was deposited 5 in your deposit with success"
		And I click on the "OK" button
		Then I close the browser
		
@WithdrawSuccess
Scenario: withdraw success
		Given I sucessfully login into V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Withdraw Money" button
		And I see the text "Withdraw Money"
		And I insert "5" in the deposit quantity
		And I click on the "Send Payment" button
		And I insert "0" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "It was withdrawn 5 from your deposit with success"
		Then I close the browser
		
@WithdrawSuccessAndVerified
Scenario: withdraw success and verified
		Given I sucessfully login into V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Withdraw Money" button
		And I see the text "Withdraw Money"
		And I insert "5" in the deposit quantity
		And I click on the "Send Payment" button
		And I insert "0" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "It was withdrawn 5 from your deposit with success"
		And I click on the "OK" button
		And I see the text "-5"
		Then I close the browser
		
@DepositSuccessAndVerified
Scenario: deposit success and verified
		Given I sucessfully login into V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		And I click on the "Deposit Money" button
		And I insert "5" in the deposit quantity
		And I click on the "Send Payment" button
		And I insert "0" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "It was deposited 5 in your deposit with success"
		And I click on the "OK" button
		And I see the text "5"
		Then I close the browser
		
@SeePiggyAfterRoundTransaction
Scenario: Check Piggy After Round Transaction
		Given I sucessfully login into V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		And I set the "Round up" to on
		And I click on the "Home" button
		And I click on the "Send money" button
		And I see the text "Send Money"
		And I insert "911111111" in the phone field
		And I insert "5.90" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
		And I insert "0" in Confirmation Modal
		And I click on the "Confirm" button
		And I click on the "Yes" button
		And I see the text "It was sent 5.9 to 911111111 with success"
		And I click on the "OK" button
		And I click on the "piggyV" button
		Then I see the text "0.1"
		And I close the browser
		
