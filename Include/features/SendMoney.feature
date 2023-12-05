Feature: Send money page
As a user
I want to send money

#Beware in all scenarios of this feature file Katalon sometimes can't capture the "And I see the text "Send money". 
#If it happens, please try again.
#Preferable would be to comment each of those lines to avoid 100% any error.

@GoToSendMoneyFromDashboard
Scenario: Get to the send money from the dashboard
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
		Then I close the browser
		
@GoToSendMoneyEmpty
Scenario: Verify that all fields are empty
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
		And I verify that "Phone" is empty
		And I verify that "Payment" is empty
		And I verify that "Message" is empty
		Then I close the browser
		
@FailToSendMoneyInvalidPhoneNumberFieldRequired
Scenario: Fail to send money, empty phone field
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
	  And I insert "915342987" in the phone field
	  And I insert " " in the phone field
	 	Then I see the text "This field is required"
	 	And I close the browser
	  
@FailToSendMoneyInvalidPhoneNumberNotPortuguese
Scenario: Fail to send money, invalid PT number
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
	  And I insert "123321123" in the phone field
	  Then I see the text "Invalid Portuguese phone number"
	 	And I close the browser
	 	
@FailToSendMoneyInvalidPhoneNumberNotLongEnough
Scenario: Fail to send money, invalid lenght of phone
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send money"
		And I insert "91234212" in the phone field
		Then I see the text "Invalid phone number, it should contain 9 digits"
	 	And I close the browser

@FailToSendMoneyContactIsNotVCardUser
Scenario: Fail to send money, contact is not a v-card user
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send Money"
		And I insert "912455432" in the phone field
		And I insert "5" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
		And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		Then I see the text "This contact is not a V-Card user yet"
		And I click on the "OK" button
	 	And I close the browser
   
@FailToSendMoneyWrongPINCodeNotNumber
Scenario: Fail to send money, invalid pin code
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send Money"
		And I insert "912455432" in the phone field
		And I insert "5" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
    And I insert "a" in Confirmation Modal
    Then I see the text "This field must be a number"
    And I close the browser

@FailToSendMoneyWrongPINCodeNotSame
Scenario: Fail to send money, pin code incorrect
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send Money"
		And I insert "912455432" in the phone field
		And I insert "5" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
    And I insert "5" in Confirmation Modal
		And I click on the "Confirm" button
		Then I see the text "The confirmation code is incorrect"
    And I close the browser
    
@TryingToSendMoneyToHimself
Scenario: Trying to send money to himself
		Given I sucessfully register a V-Card
		When I click on the "Send money" button
		And I see the text "Send Money"
		And I insert my "912455432" in the phone field
		And I insert "5" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
    And I insert "9" in Confirmation Modal
		And I click on the "Confirm" button
		Then I see the text "You cannot send money to yourself"
    And I close the browser

@SendMoneyExcedsSpentable
Scenario: Fail to send money, Exceds spentable
		Given I sucessfully login into V-Card
		When I click on the "Send money" button
		And I see the text "Send Money"
		And I insert "911111111" in the phone field
		And I insert "500" in the payment field
		And I insert "ola" in the message field
		And I click on the "Send Payment" button
		And I insert "0" in Confirmation Modal
		And I click on the "Confirm" button
		Then I see the text "You dont have enough money to make this transfer"
		And I close the browser
		
@ArriveSendMoneyAfterContactList
Scenario: Arrives in Send Money After Contact List
		Given I sucessfully login into V-Card
		When I click on the "Contacts" button
    #If it seems stuck, dont panic c:	
    And I sucessfully add "911111111" to my contact list
		And I see the text "911111111"	
		And I click on the "SendMoneyIcon" button
		Then I see the text "Send Money"
		And I close the browser
		
		
@SuccessAfterMoneyIsSent
Scenario: Success after money is sent
		Given I sucessfully login into V-Card
		When I click on the "Send Money" button
		And I see the text "Send Money"
		And I insert "911111111" in the phone field
		And I insert "5" in the payment field
		And I insert "olaa" in the message field
		And I click on the "Send Payment" button
		And I insert "0" in Confirmation Modal
		And I click on the "Confirm" button
		And I see the text "It was sent 5 to 911111111 with success"
		Then I close the browser
	  

	  
	  
	  
	  
	  