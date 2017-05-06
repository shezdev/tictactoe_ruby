require_relative "Player"

class Game

  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  def allocateMarkerTo(player)
    player.marker = ["X","O"].sample
  end

  def play
    allocateMarkerTo(player1)

    if player1.marker = "X"
      player2.marker = "O"
    else
      player2.marker = "X"
    end
    
  end

end
