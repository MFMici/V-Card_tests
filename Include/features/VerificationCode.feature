Feature: Valid Verification Code
  As a User
  I want to create a V-Card account

	@Valid_Confirmation_Alert
  Scenario: Valid Confirmation Alert
    Given I have the browser open
	  When I navigate to the URL "https://code-git-feature-gz-49-grupoz.vercel.app/?_vercel_share=gALFEcY2Ne3gvkI91G8z2DSGXul113c8"
	  And I click on the "Create new account" button
 	  And I insert a random valid phone number in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "V-Card created with success"
    And I close the browser
    
  @Invalid_Confirmation_Alert
	Scenario: Invalid Confirmation Alert
    Given I have the browser open
	  When I navigate to the URL "https://code-git-feature-gz-49-grupoz.vercel.app/?_vercel_share=gALFEcY2Ne3gvkI91G8z2DSGXul113c8"
	  And I click on the "Create new account" button
 	  And I insert a random valid phone number in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "a" in Confirmation Modal
    Then I see the text "This field must be a number"
    And I close the browser
    