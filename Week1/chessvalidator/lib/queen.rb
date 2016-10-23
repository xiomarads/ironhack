class Queen < Pieces
	def can_move?(x_dest, y_dest)
		if ((x_dest - @cordx != 0) && (y_dest == @cordy)) || ((y_dest - @cordy != 0) && (x_dest == @cordx))
			puts "yes" 
		elsif (x_dest - @cordx).abs == (y_dest - @cordy).abs
			puts "yes" 	
		else
			puts "no"
		end
	end
end