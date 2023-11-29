Feature: See user dashboard
As a user
I want to see my dashboard

@SeeTotalBalance
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
    Then I see the text "balance"
    Then I see the text "Total balance"
    Then I close the browser 
    