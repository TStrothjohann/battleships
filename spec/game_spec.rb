require 'game'
require 'board'

describe Game do

  let(:game){Game.new}
  let(:board){Board.new}
  
  it "should be able to make a Board before game starts" do
      game.make_board
      expect(board.grid).to eq([])
  end

  it "should be able to create two players gathering name from user input" do
      game.create_players
      expect(Player2).to exist
  end

  it "should create two players before game starts" do
      game.create_players
      expect(game.players.count).to eq(2) 
  end

end