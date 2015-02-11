class Player
 	
	# def set_cell_status (cell, new_status)
	# 	cell.change_status(new_status)
	# end

	def set_ship (board,cell)
		board.grid.select{|x| x==cell}
 		cell.change_status(:ship)
	end

  def take_shot (board,cell)
    board.grid.select{|x| x==cell}
    	puts cell.status
		if cell.status == :missed || cell.status == :hit
  		raise "You have already shot on that cell!"
  	elsif cell.status == :water
    	cell.change_status(:missed)
    	#puts "Missed!"
  	else
    	cell.change_status(:hit)
    	#puts "Hit! Shoot one more time!"
  	end
  end





end