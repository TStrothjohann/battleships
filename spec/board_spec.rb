require 'board'

describe Board do
  let(:board){Board.new}
  let(:cella1){double :cell, status: :water, location: :a1}
  let(:cella2){double :cell, status: :water, location: :a2}
  let(:cellb1){double :cell, status: :water, location: :b1}
  let(:cellb2){double :cell, status: :water, location: :b2}
  let(:cell)  {double :cell}
  let(:ship)  {double :ship}
  let(:shot)  {double :shot, position: :b1}

  it "should be able to hold cells" do
    expect(board.cell_count).to eq(0)
    board.hold(cella1)
    expect(board.cell_count).to eq(1)
  end

  it 'should not accept any more cells when the board is full' do
    board.hold(cella1)
    board.hold(cella2)
    board.hold(cellb1)
    board.hold(cellb2)
    expect{board.hold(cell)}.to raise_error(RuntimeError, 'Board is full')
  end

  it 'should be able to place a ship in a cell' do
    board.hold(cella1)
    allow(cella1).to receive(:status=)
    expect(board.grid[0]).to receive(:status=).with ship 
    board.place(ship)
  end

  it "should be able to receive a shot and place it into the corresponding cell" do
    board.hold[cellb1]
    allow(cellb1).to receive(:status=)
    expect(board.grid[3]).to receive(:status=).with shot

  end
end
