require 'marker'

describe Marker do 

	let(:marker) {Marker.new}
	let(:board) {Board.new}


	it 'should know its location' do
		marker.my_location
		
	end

end