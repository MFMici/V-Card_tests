Feature: Piggy Vault Page
As a user
I want to see notifications


@GoToNotificationFromDashboard
Scenario: Go to notifications page from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "bell" button
		And I see the text "NotificationsT"
		Then I close the browser
		