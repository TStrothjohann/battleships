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

  it 'should be able to place a hit-marker' do
    board.place_ship(:a1)
    board.set_marker(:a1)
    expect(board.cell_lookup(:a1)).to eq(:hit)
  end

  # it "should not set a marker that has allready been set" do
  #   board.set_marker(:b2)
  #   expect{board.set_marker(:b2)}.to eq("You have asked me that, stupid!")
  # end

end
