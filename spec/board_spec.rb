require 'board'

describe Board do
  let(:board){Board.new}

  it "should know how many cells it has" do
    board.make_board(2)
    expect(board.cell_count).to eq(4)
  end

  it "should be able to place a ship" do
    board.place_ship(:a1)
    expect(board.cell_lookup(:a1)).to eq(:ship)
  end

  it "should be able to place miss-marker" do
    board.set_marker(:a2)
    expect(board.cell_lookup(:a2)).to eq(:missed)
  end

end
