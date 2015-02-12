require 'board'

class Game
  attr_reader :players

  def make_board
      Board.new
  end

  def create_players
    player1_name ||= "Player1"
    player2_name ||= "Player2" 
    puts "Please type in the first player's name and press return" 
    gets.chomp = player1_name
    puts "Please type in the second player's name and press return" 
    gets.chomp = player2_name
    player1_name = Player.new
    player2_name = Player.new
    
  end

end