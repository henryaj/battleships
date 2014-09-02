Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Getting to the registration page
		Given I am on the homepage
		When I follow "New Game"
		Then a new game should be initialised
		Then I should see "What's your name?"

	Scenario: Registering
		Given I am on the page 'newplayer'
		When I fill in "name" with "my name"
		Then the "name" field should contain "my name"
		Then player1.name should equal "my name"