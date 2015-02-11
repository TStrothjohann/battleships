class Cell
  attr_accessor :location

  def initialize (location)
    @location = location
  end

	def status
		:water
	end

end