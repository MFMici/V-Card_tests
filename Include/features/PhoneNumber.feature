Feature: Validate phone number requirements
  As a User
  I want to create a V-Card account
  
  @Phone_Number_Already_Registered
	Scenario: Phone number is already registered
		 Given I have the browser open
	   When I navigate to the URL "https://code-grupoz.vercel.app/"
	   And I click on the "Create new account" button
	   And I insert "919191919" in the phone field
		 Then I see the text "Phone number already exists"
		 And I close the browser
   
  @Phone_Number_Not_Portuguese
	Scenario: Phone number is not portuguese
	   Given I have the browser open
	   When I navigate to the URL "https://code-grupoz.vercel.app/"
	   And I click on the "Create new account" button	   
	   And I insert "123321123" in the phone field
	   Then I see the text "Invalid Portuguese phone number"
	   And I close the browser
	   
	@Phone_Number_Not_Long_Enough
	Scenario: Phone number is not long enough
		Given I have the browser open
	  When I navigate to the URL "https://code-grupoz.vercel.app/"
	  And I click on the "Create new account" button
		And I insert "91234212" in the phone field
		Then I see the text "Invalid phone number, it should contain 9 digits"
		And I close the browser
   
