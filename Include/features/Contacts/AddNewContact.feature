Feature: View on contact list
As a user
I want to see my contact list

@GoToAddContact
Scenario: Get to the add contact
		Given I sucessfully register a V-Card
		When I click on the "Contacts" button
    #If it seems stuck, dont panic c:	
		Then I click on the "Plus" button
		And I close the browser

@AddContact
Scenario: User search for a contact
		Given I sucessfully register a V-Card
		When I click on the "Contacts" button
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
		Given I sucessfully register a V-Card
		When I click on the "Contacts" button
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
		Given I sucessfully register a V-Card
		When I click on the "Contacts" button
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
    Given I sucessfully register a V-Card
    When I click on the "Contacts" button
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
    
#This Gerkin cannot be tested, because it implies making a Android App to actully test the feature

#@ImportContacts
#Scenario: User imports contacts from his phone contacts
   	#Given I sucessfully register a V-Card
    #When I click on the "Contacts" button
    #And I click on the "Add Contacts" button
    #And I click on the "Import contacts" button
    #And I choose the contacts I want to import
    #And I click on the "Done" button
    #Then I see the imported contact in my contact list
    #And I close the browser
    