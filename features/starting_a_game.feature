Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Getting to the registration page
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"

	Scenario: Registering
		Given I am on the page 'newplayer'
		When I type in my name
		Then I should see "Hello, " name
		Then my name should be passed to player1.name