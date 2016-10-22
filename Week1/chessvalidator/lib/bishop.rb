class Bishop < Pieces

	def can_move?(x_dest, y_dest)
		if (x_dest - @cordx).abs == (y_dest - @cordy).abs
			"yes" 
		else
			"no"
		end
	end
end