class Knight < Pieces

	def can_move?(x_dest, y_dest)
		if (x_dest - @cordx).abs == 1 && (y_dest - @cordy).abs == 2
			"yes"
		elsif (x_dest - @cordx).abs == 2 && (y_dest - @cordy).abs == 1 
			"yes" 
		else
			"no"
		end
	end
end