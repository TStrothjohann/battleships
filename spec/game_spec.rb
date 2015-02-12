require 'game'
require 'board'
require 'player'

describe Game do

  let(:game){Game.new}
  let(:board){Board.new}
  let(:player1){Player.new}
  
  it "should be able to make a Board before game starts" do
      game.make_board
      expect(board.grid).to eq([])
  end

  it "should be able to create one player" do
      game.create_player
      expect(player1).to respond_to(:set_ship)
  end

    

end