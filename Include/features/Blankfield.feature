Feature: Blank Field
  As a User
  I want to create a V-Card account

	@Invalid_Password
	Scenario: Invalid/Blank Password
	  Given I have the browser open
	  When I navigate to the URL "http://localhost:8080/register"
	  And I insert "915342917" in the phone field
	  And I insert "aokokokoko" in the password field
	  And I insert "" in the password field
	  Then I see the text "This field is required"
	  And I close the browser

	@Invalid_Phone_Number
	Scenario: Invalid/Blank Phone number
	  Given I have the browser open
	  When I navigate to the URL "http://localhost:8080/register"
	  And I insert "915342987" in the phone field
	  And I insert " " in the phone field
	  Then I see the text "This field is required"
	  And I close the browser

	@Invalid_Confirmation
	Scenario: Invalid Confirmation Alert
	  Given I have the browser open
	  When I navigate to the URL "http://localhost:8080/register"
	  And I insert "915452287" in the phone field
	  And I insert "Dasidjas@1@" in the password field
	  And I click on the "Create V-Card" button
	  And I insert "9" in Confirmation Modal
	  And I insert " " in Confirmation Modal
	  Then I see the text "This field is required"
	  And I close the browser
