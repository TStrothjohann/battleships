class Board 
  attr_accessor :cells

  def initialize 
      @cells = Hash.new
  end

  def make_board(width)
    @width = width
    @cells[:a1] = :water
    @cells[:a2] = :water
    @cells[:b1] = :water
    @cells[:b2] = :water
  end

  def cell_count
		@cells.length
  end

  def place_ship(cell)
    @cells[cell] = :ship
  end

  def cell_lookup(cell)
    @cells[cell] 
  end

  def set_marker(cell)
      if cell_lookup(cell) == :ship
         @cells[cell] = :hit
       else
        @cells[cell] = :missed
       end
  end

end