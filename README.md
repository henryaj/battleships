# Battleships

Week three at [Makers Academy](http://www.makersacademy.com). We're making the board game [battleships](http://en.wikipedia.org/wiki/Battleship_(game)) in Ruby. Our mission was to:

* use [CRC cards](http://en.wikipedia.org/wiki/Class-responsibility-collaboration_card) to thrash out a domain model of the game,
* present those findings to the group,
* use the domain model to build the game.

## Domain model

Using a CRC card exercise, we decided on using the following classes to describe the game:

* **Ship**, which sits inside several **Cells** and has 'hit points' to keep track of whether it has been sunk or not
* **Cell**, an individual cell on the grid which knows if it has been hit and whether it contains a **Ship**
* **Board**, a hash of hashes which describes the ten by ten grid that the game is played on. Each hash value contains a **Cell**
* **Tracking Board** to tell the player which cells on their opponent's board they have hit
* **User**, a player class that is instantiated as part of the **Game**
* **Game**, an object that wraps all the other classes and is instantiated when the program is run

## Design questions

There are a number of ways to approach this challenge.

### The Board

Some groups opted for nested arrays, which give a neat grid when displayed on screen but make for less readable code (as addressing the items in an array using zero-order numbering is somewhat counterintuitive). We opted instead for a nested hash of arrays with letter keys in one dimension and number keys in the other, which makes addressing more readable but introduces other complexities – namely working with and incrementing letters.

### Players and games

We opted to create a 'Game' class that encapsulates the entire game – players, boards, ships and all – and create all of those when the game is instantiated. 

### Destroying ships

We chose to keep track of ships' health using 'hit points' – equal to the size of the ship, so a ship which spans five blocks has five hit points. Hit points decrease one per hit until they reach zero, at which point the ship is marked as 'sunk'.

### Technologies

This implementation of battleships is written in Ruby and tested with RSpec.
