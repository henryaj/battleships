Feature: Player registration & starting game
	In order to play battleships
	I want to start a new game

	Scenario: Player 1 is on the homepage and wants to register
		Given I am on the homepage
		Then I should see "What's your name?"
		And I should see a form with field "Name"
		And I should see "Current number of players: 0"

	Scenario: Filling in player 1's name
	  Given I am on the homepage
	  When I fill in the field "Name" with "my name"
	  Then field "Name" should contain "my name"

  Scenario: Player 1 submits registration form
    Given I am on the homepage
    And there are no players registered
    And I have filled in the field "Name" with "my name"
    When I follow "Submit"
    Then I should be taken to '/new'
    And I should see "my name"

  Scenario: Player 2 submits registration form
    Given I am on the homepage
    And there is one player registered
    And I have filled in the field "Name" with "my name"
    When I follow "Submit"
    Then I should be taken to '/new'
    And I should see "my name"

  Scenario: Player 3 submits registration form
    Given I am on the homepage
    And there are two players registered
    Then I should see an error

  Scenario: Placing ships
    Given I am on the "New Player" page
    Then I should see "You currently have 5 ships left to place."
    And I should see "Place Fisherboat:"
    And I should see a field "Ship Location" with placeholder "cell"
    And I should see a "Submit" button 
  
  
  

