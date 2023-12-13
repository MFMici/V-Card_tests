Feature: Piggy Vault Page
As a user
I want to see notifications


@GoToNotificationFromDashboard
Scenario: Go to notifications page from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "bell" button
		And I see the text "NotificationsT"
		Then I close the browser
		
@NoNotifications
Scenario: No Notifications
		Given I sucessfully register a V-Card
		When I click on the "bell" button
		And I see the text "NotificationsT"
		And I see the text "Seems like you dont have any notifications"
		Then I close the browser
		
@MarkasRead
Scenario: Mark notification as read
		Given I sucessfully login into V-Card
		When I click on the "bell" button
		And I see the text "NotificationsT"
		And I click on the "EyeIcon" button
		Then I close the browser