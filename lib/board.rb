class Board
  def initialize 

  end

  def make_board(width)
    @width = width
    @cells = Hash.new
    @cells[:a1] = :water
    @cells[:a2] = :water
    @cells[:b1] = :water
    @cells[:b2] = :water
  end

  def cell_count
		@cells.length
  end

end