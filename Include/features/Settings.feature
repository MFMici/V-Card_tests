Feature: Go to settings
As a user
I want to change my settings

@GoToSettings
Scenario: Get to the settings page
		Given I sucessfully register a V-Card
		When I click on the "Settings" button
		And I see the text "Settings"
		Then I close the browser