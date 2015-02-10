require 'marker'

describe Marker do 

	let(:marker) {Marker.new}
	let(:board) {double :board, is_a_hit?: false}


	it 'should be able to be a hit' do
		expect(marker).to be_hit
	end

end