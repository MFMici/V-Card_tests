Feature: Validate if a phone number is long enough
  As a User
  I want to be informed and guided appropriately if I attempt to create an account with a invalid phone number
  
  Scenario: Phone number is not long enough
   Given I have the browser open
   When I navigate to the URL "http://localhost:8080/register"
   And I insert "91234212" in the phone field
   Then I see the text "Invalid phone number, it should contain 9 digits"
   And I close the browser
