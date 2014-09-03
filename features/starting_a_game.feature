Feature: Starting the game
	In order to play battleships
	I want to start a new game

	Scenario: Player 1 registering
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"