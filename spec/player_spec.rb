require 'player'
require 'cell'


describe Player do 

	let(:player) {Player.new}
	
  # let(:cella1){double :cell, status: :ship, location: :a1}
  # let(:cella2){double :cell, status: :water, location: :a2}
  # let(:cellb1){double :cell, status: :water, location: :b1}
  # let(:cellb2){double :cell, status: :water, location: :b2}
  let(:cell){double :cell}

	it "should be able to change Cell1a's status to ship" do
    cell.location = :a1
    expect(cell.location).to eq(:a1)
	end






	
end