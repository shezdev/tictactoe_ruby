require_relative "Player"

class Game

  attr_accessor :player1, :player2, :board

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @board = [["", "", ""], ["", "", ""], ["", "", ""]]
  end

  def allocateMarkerTo(player)
    player.marker = ["X","O"].sample
  end

  def request_move
    puts "Please choose a field on the board by enter 1-9"
    current_move = gets.chomp
    current_move
  end

  def play
    allocateMarkerTo(player1)

    if player1.marker = "X"
      player2.marker = "O"
    else
      player2.marker = "X"
    end

    puts "Hi Player1, your marker is a #{@player1.marker}"
    @player1.current_move = request_move

  end

end
