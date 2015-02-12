class Player
 	
  attr_accessor :name 

	def initialize (name=self.object_id)
    @name = name
  end

	def set_ship (arg1,cell,orientation)
		#board.grid.select{|x| x==cell}
 		 cell.status = arg1
	end

  def take_shot (board,cell)
    board.grid.select{|x| x==cell}
		if cell.status == :missed || cell.status == :hit
  		raise "You have already shot on that cell!"
  	elsif cell.status == :water
    	cell.change_status(:missed)
  	else
    	cell.change_status(:hit)
  	end

  end

  def calculate_ship_cells(ship, start_cell, orientation)
     if orientation == :horizontal 
      array = [start_cell.location]
      x = 1
      name = start_cell.location
      while x < ship.length
        name = name.next
        array << name
        x = x+1
      end
      array
    end

  end
    
 


end