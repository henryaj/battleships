Feature: Starting a game of battleships
  In order to begin a game
  As a player
  I want to be able to start a game

  Scenario: On the home page
    Given I am on the home page
    Then I should see "New Game"

  Scenario: Clicking on New Game
    Given I am on the home page
    When I follow "New Game"
    Then I should see "What is your name?"
  
  
  
  
  
  

  
