Feature: Blank Field
  As a User
  I want to create a V-Card account

	@Invalid_Password
	Scenario: Invalid/Blank Password
	#This test sometimes wont be able to see "This field is required" because when deleting whats on the password field cant trigger it to show (for some reason)
	#When testing, try to insert something in the password field and delete it, then it should work
	  Given I have the browser open
	  When I navigate to the URL "https://code-grupoz.vercel.app/"
	  And I click on the "Create new account" button
	  And I insert "915342917" in the phone field
	  And I insert "aokokokoko" in the password field
	  And I insert "" in the password field
	  Then I see the text "This field is required"
	  And I close the browser

	@Invalid_Phone_Number
	Scenario: Invalid/Blank Phone number
	  Given I have the browser open
	  When I navigate to the URL "https://code-grupoz.vercel.app/"
	  And I click on the "Create new account" button
	  And I insert "91534227" in the phone field
	  And I insert " " in the phone field
	  Then I see the text "This field is required"
	  And I close the browser

	@Invalid_Confirmation
	Scenario: Invalid Confirmation Alert
	  Given I have the browser open
	  When I navigate to the URL "https://code-grupoz.vercel.app/"
	 	And I click on the "Create new account" button
	  And I insert "915122287" in the phone field
	  And I insert "Dasidjas@1@" in the password field
	  And I click on the "Create V-Card" button
	  And I insert "9" in Confirmation Modal
	  And I insert " " in Confirmation Modal
	  Then I see the text "This field is required"
	  And I close the browser
