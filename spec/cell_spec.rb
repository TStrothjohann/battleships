require 'cell'

describe Cell do 

	let(:cell) {Cell.new}

  it "cell should have a status" do
    expect(cell.status).to eq(:water)
  end

	it 'should be able to change it\'s status' do
		expect(cell.status).to eq(:water)
		cell.status = :ship
		expect(cell.status).to eq(:ship)
	end

end