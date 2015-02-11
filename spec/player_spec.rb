require 'player'
require 'cell'


describe Player do 

	let(:player) {Player.new}
  let(:cella1) {Cell.new("a1")}
  let(:cella2) {Cell.new("a1")}

	it "should be able to change a cells status" do
    player.set_ship(cella1)
    expect(cella1.status).to eq(:ship)
	end

  it "should be able to take a shot and miss" do
    player.take_shot(cella2)
    expect(cella2.status).to eq(:missed)
  end

  it "should get a message, if the cell has already been shot at" do
    
    expect{player.take_shot(cella1)}.to raise_error(RuntimeError, "You have already shot on that cell!")

  end





	
end