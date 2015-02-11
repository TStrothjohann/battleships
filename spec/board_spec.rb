require 'board'

describe Board do
  let(:board){Board.new}
  let(:cell){double :cell, status: :water}
  

  it "should be able to hold cells" do
    expect(board.cell_count).to eq(0)
    board.hold(cell)
    expect(board.cell_count).to eq(1)
  end

end
