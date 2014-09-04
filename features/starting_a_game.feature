Feature: Starting the game
	In order to play battleships
	I want to start a new game

	Scenario: Player 1 is on the homepage and wants to register
		Given I am on the homepage
		Then I should see "What's your name?"
		And I should see a form with field "Name"

	Scenario: Filling in player 1's name
	  Given I am on the homepage
	  When I fill in the field "Name" with "my name"
	  Then field "Name" should contain "my name"

  Scenario: Submitting registration form
    Given I am on the homepage
    And I have filled in the field "Name" with "my name"
    When I follow "Submit"
    Then I should be taken to '/new'
    And I should see "Welcome, name!"

  Scenario: title
    Given context
    When event
    Then outcome
  
  
  
	  
	  
	  
	
	
	

		