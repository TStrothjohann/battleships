class Cell
  attr_accessor :location, :status

  def initialize (location)
    @location = location
    @status = :water
  end

  def change_status(status)
    @status = status
  end

end