class King < Pieces

	def can_move?(x_dest, y_dest)
		if (x_dest - @cordx).abs <= 1 && (y_dest - @cordy).abs <= 1 
			"yes" 
		else
			"no"
		end
	end
end