# Tic Tac Toe - Practice tech test

Brief description of what the project is, what it does

## Getting started

`git clone path-to-your-repo`
`command_to_install_dependencies` (e.g. `bundle`)

## Usage
[(1) How to install it (what to clone, what to run to get all dependencies)]

`command_to_start` (e.g. `rackup` or `rails s`)
Navigate to `http://localhost:4567/`

[(2) How to run it (is it a command line tool? Do you have to load it into IRB? Is is a web application? What port needs to be used?)]

## Running tests

`test_command` (e.g. `rspec`)

Later on, you can add screenshots and additional information to your heart's content, but make sure you have this with all your repos as you proceed through the course. You will thank yourself later.
https://github.com/matiassingers/awesome-readme

![Image Title](image.png)

## Rules
* 2 players in game
* Players can take turns until the game is over
* A player can claim a field if not already taken
* Turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if the player wins
* A game is over when all the fields are taken

## Domain Model

|  Object (Nouns) | Messages (verbs)   |  
|---|---|
|  PLAYER | has a MARKER, takes a turn, claims a FIELD, wins, loses or draws a GAME   |  
|MARKER |is "X" or "Y", can be placed on a FIELD|
|  GAME | is played by 2 PLAYERS, has a BOARD  |   
|  FIELD | is on a BOARD, has MARKERS   |
| BOARD| has 9 FIELDS |

## User Stories

```
As a PLAYER
When I start a GAME of Tic Tac Toe
I will be allocated a MARKER ("O" or "X") randomly.

As a PLAYER
When I am prompted to take my turn
I will place my MARKER on an empty FIELD on the BOARD.

As a PLAYER
When my turn is over
A second PLAYER will take their turn.

As a PLAYER
If my turn results in 3 MARKERS in a row, column or diagonal on the BOARD.
I win, and the GAME is over.

As a PLAYER
If the second player's turn results in 3 MARKERS in a row, column or diagonal on the BOARD
I lose, and the GAME is over.

As a PLAYER
If it is my turn, and I use the last empty space on the BOARD without resulting in a winning combination
It is a draw, and the GAME is over.

```
