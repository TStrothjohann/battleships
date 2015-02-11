require 'game'

describe Game do

  let(:game){Game.new}
  
  it "should be able to make a Board before game starts" do
      game.make_board
      expect(board.grid).not_to be_empty?
  end



end