Feature: Go to settings
As a user
I want to change my settings

@GoToSettings
Scenario: Get to the settings page
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		Then I close the browser
		
@SetRoundTransactionsToOn
Scenario: Verify if round up is turned on
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		And I set the "Round up" to on
		Then I verify that "Round up" is on
		And I close the browser
		
@SetNotificationsToOn
Scenario: Verify if notifications is turned on
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		And I set the "Notifications" to on
		Then I verify that "Notifications" is on
		And I close the browser
		
@SetRoundTransactionsToOff
Scenario: Verify if round up is turned on
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		#We need to set it on first, to verify after that it is indeed off
		And I set the "Round up" to on
		And I set the "Round up" to off
		Then I verify that "Round up" is off
		And I close the browser