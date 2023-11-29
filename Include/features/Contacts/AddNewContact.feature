Feature: View on contact list
As a user
I want to see my contact list

@GoToAddContact
Scenario: Get to the add contact
		Given I have the browser open
		When I navigate to the URL "https://code-git-develop-grupoz.vercel.app/?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
		And I click on the "Create new account" button
		And I insert "912372157" in the phone field
		And I insert "Dasidjas@1@" in the password field
		And I click on the "Create V-Card" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "Welcome to V-Card"
		And I click on the "OK" button
		And I click on the "Contacts" button
    #If it seems stuck, dont panic c:	
		Then I click on the "Plus" button
		And I close the browser

@AddContact
Scenario: User search for a contact
		Given I have the browser open
		When I navigate to the URL "https://code-git-develop-grupoz.vercel.app/?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
		And I click on the "Create new account" button
		And I insert "911572166" in the phone field
		And I insert "Dasidjas@1@" in the password field
		And I click on the "Create V-Card" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		And I click on the "OK" button
		And I click on the "Contacts" button
		And I click on the "Add Contacts" button
    #If it seems stuck, dont panic c:	
		And I click on the "Plus" button
		And I insert "911111111" in the phone field
		And I click on the "Add contact" button
		And I click on the "OK" button
		Then I see the text "911111111"
		And I close the browser

@VerifyIfContactIsVCardUser
Scenario: User search for a contact
		Given I have the browser open
		When I navigate to the URL "https://code-git-develop-grupoz.vercel.app/?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
		And I click on the "Create new account" button
		And I insert "911572166" in the phone field
		And I insert "Dasidjas@1@" in the password field
		And I click on the "Create V-Card" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		And I click on the "OK" button
		And I click on the "Contacts" button
		And I click on the "Add Contacts" button
    #If it seems stuck, dont panic c:	
		And I click on the "Plus" button
		And I insert "911111111" in the phone field
		And I click on the "Add contact" button
		And I click on the "OK" button
		Then I see the text "V-Card User"
		And I close the browser

@VerifyIfContactIsImported
Scenario: User search for a contact
		Given I have the browser open
		When I navigate to the URL "https://code-git-develop-grupoz.vercel.app/?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
		And I click on the "Create new account" button
		And I insert "911572166" in the phone field
		And I insert "Dasidjas@1@" in the password field
		And I click on the "Create V-Card" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		And I click on the "OK" button
		And I click on the "Contacts" button
		And I click on the "Add Contacts" button
		#If it seems stuck, dont panic c:	
		And I click on the "Plus" button
		And I insert "933675431" in the phone field
		And I click on the "Add contact" button
		And I click on the "OK" button
		Then I see the text "Imported Contact"
		And I close the browser


@FilterContacts   
Scenario: User filter contacts from his list
    Given I have the browser open
    When I navigate to the URL "https://code-git-develop-grupoz.vercel.app/?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
    And I click on the "Create new account" button
    And I insert "913572166" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    And I click on the "OK" button
    And I click on the "Contacts" button
    And I click on the "Add Contacts" button
    #If it seems stuck, dont panic c:	  
    And I click on the "Plus" button
    And I insert "933675431" in the phone field
    And I click on the "Add contact" button
    And I click on the "OK" button
    #If it seems stuck, dont panic c:	  
    And I click on the "Plus" button
    And I insert "935732314" in the phone field
    And I click on the "Add contact" button
    And I click on the "OK" button
	  And I insert "933675431" in the Contacts search
    Then I click on the filtered contact
    And I close the browser
    
    
    