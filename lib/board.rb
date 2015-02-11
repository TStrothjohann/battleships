class Board 

  attr_accessor :grid
  attr_reader :grid_size

  def initialize(grid_size=4)
    @grid = []
    @grid_size = grid_size
  end

  def cell_count
    @grid.length
  end

  def hold(cell)
    raise "Board is full" if full?
    @grid << cell
  end

  def full?
    cell_count == grid_size
  end

end