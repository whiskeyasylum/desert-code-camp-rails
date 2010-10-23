Feature: Manage sessions
  In order to manage sessions
  a guest
  wants to view a list of sessions and their details
  
  Scenario: View list of sessions
    Given I am on the home page
    When I follow "Sessions"
    Then I should see
