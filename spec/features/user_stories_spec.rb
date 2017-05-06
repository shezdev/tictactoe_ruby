describe "User Stories" do
  # As a PLAYER
  # When I start a GAME of Tic Tac Toe
  # I will be allocated a MARKER ("O" or "X") randomly.

  it "allocates a player a marker when a new game starts" do
    game = Game.new
    player = Player.new
    expect {game.allocateMarkerTo(player)}.not_to raise_error
  end

end
