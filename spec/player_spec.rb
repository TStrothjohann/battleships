require 'player'
require 'cell'
require 'board'

describe Player do 

	let(:player) {Player.new}
  let(:cella1) {Cell.new("a1")}
  let(:cella2) {Cell.new("a2")}
  let(:board1) {Board.new}

  def load_board
    board1.hold(cella1)
    board1.hold(cella2)
  end
  

	it "should be able to set a ship" do
    load_board
    player.set_ship(board1,cella1)
    expect(cella1.status).to eq(:ship)
	end

  it "should be able to take a shot and miss" do
    load_board
    player.take_shot(board1,cella2)
    expect(cella2.status).to eq(:missed)
  end

  it "should get a message, if the cell has already been shot at" do
    load_board
    player.take_shot(board1,cella1)
    expect{player.take_shot(board1,cella1)}.to raise_error(RuntimeError, "You have already shot on that cell!")
  end

  it 'should be able to take a shot and hit a ship' do
    load_board
    player.set_ship(board1,cella1)
    player.take_shot(board1,cella1)
    expect(cella1.status).to eq(:hit)
  end

	
end