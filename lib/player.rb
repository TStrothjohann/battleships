class Player
 	
	# def set_cell_status (cell, new_status)
	# 	cell.change_status(new_status)
	# end

	def set_ship (cell)
		cell.change_status(:ship)

	end

  def take_shot (cell)
    if cell.status == :missed || cell.status == :hit
    	raise "You have already shot on that cell!"
    elsif cell.status == :water
      cell.change_status(:missed)
    else
      cell.change_status(:hit)
    end
  end





end