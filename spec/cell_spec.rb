require 'cell'

describe Cell do 

	it 'should know its location' do
		cell = Cell.new :a1
		expect(cell.location).to eq(:a1)
	end

	it 'should be able to set its location on creation' do
		cell = Cell.new :a2	
		expect(cell.lcation).to eq(:a2)
	end



end