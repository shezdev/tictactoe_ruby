describe "User Stories" do
  # 1. As a PLAYER
  # When I start a GAME of Tic Tac Toe
  # Myself and my opponent will be allocated a MARKER ("O" or "X") randomly.

  it "1. Allocates the two players markers when a new game starts" do
    game = Game.new
    expect {(game.play)}.not_to raise_error
  end

  # 2. As a PLAYER
  # When I am prompted to take my turn
  # I will place my MARKER on an empty FIELD on the BOARD.

  it "2. Allows a player to place a marker on an empty field on the board" do
    game = Game.new
    game.board = [["", "", ""], ["", "", ""], ["", "", ""]]
    game.request_move
    game.player1.current_move = 1
    expect { (game.board[0][0]).to eq(game.player1.marker) }
  end

end

# feature test 1

# require "./lib/game.rb"
#  => true
# >game = Game.new
#  => #<Game:0x007fa2a40a3018 @player1=#<Player:0x007fa2a40a2ff0 @marker="">, @player2=#<Player:0x007fa2a40a2f50 @marker="">>
# > game.play
#  => "O"
# > game.player1
#  => #<Player:0x007fa2a40a2ff0 @marker="X">
# > game.player2
#  => #<Player:0x007fa2a40a2f50 @marker="O">
# > game.player1.marker
#  => "X"
# > game.player2.marker
#  => "O"

# feature test 2
# game = Game.new
# game.board = [["", "", ""], ["", "", ""], ["", "", ""]]
# game.request_move
# puts "Hi Player1, your marker is a #{game.player1.marker}"
# puts "Please choose a field on the board by enter 1-9"
# game.player1.current_move = 1
# expect { (game.board[0][0]).to eq(game.player1.marker) }
