Feature: Validate if a phone number is already registered
  As a User
  I want to be informed and guided appropriately if I attempt to create an account using a phone number that already exists in the system.
  
  Scenario: Phone number is already registered
   Given I have the browser open
   When I navigate to the URL "http://localhost:8080/register"
   And I insert "919191919" in the phone field
   Then I see the text "Phone number already exists"
   And I close the browser
