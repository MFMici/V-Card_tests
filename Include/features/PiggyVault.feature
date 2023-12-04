Feature: Piggy Vault Page
As a user
I want to use piggy vault


@GoToPiggyVaultFromDashboard
Scenario: Go to piggy vault page from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "piggyV" button
		And I see the text "Piggy Bank"
		Then I close the browser
