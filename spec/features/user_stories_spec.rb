describe "User Stories" do
  # As a PLAYER
  # When I start a GAME of Tic Tac Toe
  # Myself and my opponent will be allocated a MARKER ("O" or "X") randomly.

  it "allocates the two players markers when a new game starts" do
    game = Game.new
    expect {(game.play)}.not_to raise_error
  end

end


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
