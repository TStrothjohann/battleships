require 'board'

describe Board do
  let(:board){Board.new}
  let(:cella1){double :cell, status: :water, location: :a1}
  let(:cella2){double :cell, status: :water, location: :a2}
  let(:cellb1){double :cell, status: :missed, location: :b1}
  let(:cellb2){double :cell, status: ship, location: :b2}
  let(:cell)  {double :cell}
  let(:ship)  {double :ship, floating?: true, hit: 0}
  let(:shot)  {double :shot, position: :b1}


  def make_board
    board.hold(cella1)
    board.hold(cella2)
    board.hold(cellb1)
    board.hold(cellb2)
  end


  it "should be able to hold cells" do
    expect(board.cell_count).to eq(0)
    board.hold(cella1)
    expect(board.cell_count).to eq(1)
  end

  it 'should not accept any more cells when the board is full' do
    make_board
    expect{board.hold(cell)}.to raise_error(RuntimeError, 'Board is full')
  end

  it 'should be able to place a ship in a cell' do
    board.hold(cella1)
    allow(cella1).to receive(:status=)
    expect(board.grid[0]).to receive(:status=).with ship 
    board.place_ship(ship)
  end

  it "should be able to receive a hit" do
    make_board
    allow(cellb2).to receive(:status=)
    expect(board.grid[3]).to receive(:status=).with :hit
    expect(board.place_shot(shot,3)).to eq(:hit)
  end

  it 'should be able to place a miss on the board' do
    make_board
    allow(cella1).to receive(:status=)
    expect(board.grid[0]).to receive(:status=).with :missed
    expect(board.place_shot(shot,0)).to eq :missed
  end

  it "shouldn't accept a shot on a cell, that was shot on before." do
    make_board
    allow(cellb1).to receive(:status=)
    expect{board.place_shot(shot,2)}.to raise_error(RuntimeError, 'You have already shot on that cell!')
  end

  # it 'should tell a ship that it has been hit' do
  #   make_board
  #   allow(cellb2).to receive(:status=)
  #   expect(board.grid[3]).to receive(:status=).with :hit
  #   board.place_shot(shot,3)
  #   allow(ship).to receive(:hit)
  #   expect(ship).to receive(:hit). with 1
  #   expect(board.give_hit(ship))
  # end

end
