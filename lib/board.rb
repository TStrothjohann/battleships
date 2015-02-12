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

  def place_ship(item)
    grid[0].status = item
  end

  def place_shot(shot,cell)
    if grid[cell].status == :water
      grid[cell].status = :missed
    elsif grid[cell].status == :missed || grid[cell].status == :hit
    raise 'You have already shot on that cell!'
    else
        grid[cell].status = :hit
      end
  end


    
end