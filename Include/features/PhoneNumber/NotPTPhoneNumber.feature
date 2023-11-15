Feature: Validate if a phone number is portuguese
  As a User
  I want to be informed and guided appropriately if I attempt to create an account with a non-portuguese phone number
  
  Scenario: Phone number is not portuguese
   Given I have the browser open
   When I navigate to the URL "http://localhost:8080/register"
   And I insert "123321123" in the phone field
   Then I see the text "Invalid Portuguese phone number"
   And I close the browser
