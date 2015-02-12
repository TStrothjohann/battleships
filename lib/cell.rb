class Cell
  attr_accessor :location, :status

  def initialize (location)
    @location = location
    @status = :water
  end

end