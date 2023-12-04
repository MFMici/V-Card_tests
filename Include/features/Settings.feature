Feature: Go to settings
As a user
I want to change my settings

#Beware, Katalon takes some time to find "settings" but haven't failed any of the tests cause of it (yet)

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
Scenario: Verify if round up is turned off
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		#We need to set it on first, to verify after that it is indeed off
		And I set the "Round up" to on
		And I set the "Round up" to off
		Then I verify that "Round up" is off
		And I close the browser
		
@SetNotificationToOff
Scenario: Verify if Notifications is turned off
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		#We need to set it on first, to verify after that it is indeed off
		And I set the "Notifications" to on
		And I set the "Notifications" to off
		Then I verify that "Notifications" is off
		And I close the browser
		
@GoToDeleteAccount
Scenario: Verify if user lands to delete account page
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		And I click on the "Delete Account" button
		Then I see the text "Are you sure you want to delete your account"
		And I close the browser
		
@FailToDeleteAccount
Scenario: User tries to delete account but fails to insert a valid password
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		And I click on the "Delete Account" button
		And I see the text "Are you sure you want to delete your account"
    And I insert "passErrada1@@" in the password field
    And I click on the "Confirm delete" button
    Then I see the text "It seems like your password is incorrect"
    And I click on the "OK" button
    And I close the browser
    
@UserDeletesAccount
Scenario: User deletes account sucessfully
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		And I click on the "Delete Account" button
		And I see the text "Are you sure you want to delete your account"
    And I insert "micael1!A" in the password field
    And I click on the "Confirm delete" button
    Then I see the text "Your account has been deleted"
    And I click on the "OK" button
    And I close the browser
