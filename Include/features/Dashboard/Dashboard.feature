Feature: See user dashboard
As a user
I want to see my dashboard

@UponRegistering
  Scenario: Redirected to the dashboard upon registering
 		Given I sucessfully register a V-Card
    When I see the text "Dashboard"
    Then I close the browser
      

@UseNavBarToGoToHome
  Scenario: Arrive in the dashboard by clicking on the nav bar
 		Given I sucessfully register a V-Card
    And I see the text "Dashboard"
    When I click on the "Contacts" button
    Then I click on the "Home" button
    And I close the browser      
      
@SeeMoreAllTransacations
  Scenario: See All transacations by clicking on the dashboard button
 		Given I sucessfully register a V-Card
    When I see the text "Dashboard"
    Then I click on the "View all" button
    And I close the browser 
    
@SeeRecentTransacations
  Scenario: See most recent transacations on the dashboard
 		Given I sucessfully register a V-Card
    When I see the text "Dashboard"
    Then I see the text "last transactions"
    And I close the browser 
    
@SeeTotalBalance
  Scenario: See most recent transacations on the dashboard
 		Given I sucessfully register a V-Card
    When I see the text "balance"
    Then I see the text "Total balance"
    And I close the browser 
    