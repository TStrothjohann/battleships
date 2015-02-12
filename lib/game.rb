require 'board'
require 'player'

class Game 
  attr_reader :players

  def make_board
      Board.new
  end

  def create_player
    @player1 = Player.new
  
  end

  


end