Feature: Validate Password
  As a User
  I want to create a V-Card account

	@No_Lower_Case_Characters
  Scenario: No lowercase characters in password validation during registration
		Given I have the browser open
		When I navigate to the URL "http://localhost:8080/register"
		And I insert "913322333" in the phone field
		And I insert "MICAEL1@" in the password field
		Then I see the text "Password must contain at least one lowercase letter"
		And I close the browser
    
  @No_Number_In_Password 
  Scenario: No number in password validation during registration
    Given I have the browser open
    When I navigate to the URL "http://localhost:8080/register"
    And I insert "913322333" in the phone field
    And I insert "Micael@@" in the password field
    Then I see the text "Password must contain at least one number"
    And I close the browser
    
  @No_Special_Character 
	Scenario: No special character in password validation during registration
		Given I have the browser open
		When I navigate to the URL "http://localhost:8080/register"
		And I insert "913322333" in the phone field
		And I insert "Micael12" in the password field
		Then I see the text "Password must contain at least one special character"
		And I close the browser
    
   @Invalid_Password_lenght 
	 Scenario: Invalid password lenght through registration
		  Given I have the browser open
		  When I navigate to the URL "http://localhost:8080/register"
		  And I insert "913322333" in the phone field
		  And I insert "Mi@1" in the password field
		  Then I see the text "Password must be at least 8 characters long"
		  And I close the browser
	  
   @No_Uppercase_Characters
	 Scenario: No uppercase characters in password validation during registration
		  Given I have the browser open
		  When I navigate to the URL "http://localhost:8080/register"
		  And I insert "913322333" in the phone field
		  And I insert "micael1@" in the password field
		  Then I see the text "Password must contain at least one uppercase letter"
		  And I close the browser
    
    
