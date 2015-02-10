require 'board'

describe Board do
  let(:board){Board.new}

  it "should know how many cells it has" do
    board.make_board(2)
    expect(board.cell_count).to eq(4)
  end


end
