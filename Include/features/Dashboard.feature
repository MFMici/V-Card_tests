Feature: See user dashboard
As a user
I want to see my dashboard

@UponRegistering
  Scenario: Redirected to the dashboard upon registering
 		Given I have the browser open
    When I navigate to the URL "https://code-git-develop-grupoz.vercel.app?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
    And I click on the "Create new account" button
    And I insert "912372157" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "Welcome to V-Card"
    Then I click on the "Ok" button
    Then I see the text "Dashboard"
    Then I close the browser
      

@UseNavBarToGoToHome
  Scenario: Arrive in the dashboard by clicking on the nav bar
 		Given I have the browser open
    When I navigate to the URL "https://code-git-develop-grupoz.vercel.app?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
    And I click on the "Create new account" button
    And I insert "912372147" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "Welcome to V-Card"
    Then I click on the "Ok" button
    Then I see the text "Dashboard"
    Then I click on the "Contacts" button
    Then I click on the "Home" button
    Then I close the browser      
      
@SeeMoreAllTransacations
  Scenario: See All transacations by clicking on the dashboard button
 		Given I have the browser open
    When I navigate to the URL "https://code-git-develop-grupoz.vercel.app?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
    And I click on the "Create new account" button
    And I insert "912372147" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "Welcome to V-Card"
    Then I click on the "Ok" button
    Then I see the text "Dashboard"
    Then I click on the "View all" button
    Then I close the browser 
    
@SeeRecentTransacations
  Scenario: See most recent transacations on the dashboard
 		Given I have the browser open
    When I navigate to the URL "https://code-git-develop-grupoz.vercel.app?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD"
    And I click on the "Create new account" button
    And I insert "912372147" in the phone field
    And I insert "Dasidjas@1@" in the password field
    And I click on the "Create V-Card" button
    And I insert "9" in Confirmation Modal
    And I click on the "Confirm" button
    Then I see the text "Welcome to V-Card"
    Then I click on the "Ok" button
    Then I see the text "Dashboard"
    Then I see the text "last transactions"
    Then I close the browser 
    