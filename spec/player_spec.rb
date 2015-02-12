require 'player'

describe Player do 

	# let(:player) {Player.new}
 #  let(:cella1) {double :cell, status: :water, location: :a1}
 #  let(:cella2) {double :cell, status: :water, location: :a2}
 #  let(:board) {double :board, grid: [cella1,cella2]}
 #  let(:ship) {double :ship, length: 1}  
 #  let(:ship2) {double :ship, length: 5}

	# it "should be able to set a ship" do
 #    allow(cella1).to receive(:status=).with ship
 #    allow(cella1).to receive(:status).and_return(ship)
 #    expect(player.set_ship(ship,cella1,:horizontal)).to eq(ship)
	# end

 #  it 'should know which cells will be occupied by a setting a ship' do
 #    expect(player.calculate_ship_cells(ship2,cella1,:horizontal)).to eq([:a1,:a2,:a3,:a4,:a5])
 #  end

 #  # xit 'should be able to place a ship of length 2' do
 #  #   # allow(cella1).to receive(:status=).with ship2
 #  #   # allow(cella1).to receive(:status).and_return(ship2)
 #  #   # allow(cella2).to receive(:status=).with ship2
 #  #   # allow(cella2).to receive(:status).and_return(ship2)
 #  #   player.set_ship(ship2,cella1,:horizontal)
 #  #   expect(player.set_ship(ship2,cella1,:horizontal)).to eq(ship)
 #  # end


 #  it "should be able to take a missed shot" do
 #    allow(cella1).to receive(:status=).with :missed
 #    expect(player.take_shot(board,cella1)). to eq :missed
 #  end

 #  # it "should get a message, if the cell has already been shot at" do
 #  #   load_board
 #  #   player.take_shot(board1,cella1)
 #  #   expect{player.take_shot(board1,cella1)}.to raise_error(RuntimeError, "You have already shot on that cell!")
 #  # end

 #  # it 'should be able to take a shot and hit a ship' do
 #  #   load_board
 #  #   player.set_ship(board1,cella1)
 #  #   player.take_shot(board1,cella1)
 #  #   expect(cella1.status).to eq(:hit)
 #  # end

 #  # it "should have a name on creation" do
 #  #   expect(player.name).to eq (player.object_id)
 #  # end

 #  # it 'should be able to place a ship of length 2'
 #  #   load_board
 #  #   player.set_ship(board1,cella1,horizontal)
 #  #   expect

 #  # end
	
end