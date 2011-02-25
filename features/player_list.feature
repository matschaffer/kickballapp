Feature: Player listings
  In order to know who is on a team
  As a league manager
  I want to see a list of players on the team page
  
  Scenario: listing on a team page
    Given I am on the teams page
    When I follow "Show" in the row with "Ballshevicks"
    Then I should see "Trotter"
