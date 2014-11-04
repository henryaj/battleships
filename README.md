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

