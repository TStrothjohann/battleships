class Board 

  attr_accessor :grid

  def initialize
    @grid = []
  end

  def cell_count
    @grid.length
  end

  def hold(cell)
    @grid << cell
  end


end