require 'cell'

describe Cell do 

	let(:cella1) {Cell.new :a1}
	let(:cella2) {Cell.new :a2}


	it 'should know its location' do
		expect(cella1.location).to eq(:a1)
	end

	it 'should be able to set its location on creation' do
		expect(cella2.location).to eq(:a2)
	end

  it "cell should have a status" do
    expect(cella1.status).to eq(:water)
  end

	it 'should be able to change it\'s status' do
		expect(cella1.status).to eq(:water)
		cella1.change_status(:ship)
		expect(cella1.status).to eq(:ship)
	end

end