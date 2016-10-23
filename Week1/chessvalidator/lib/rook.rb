class Rook < Pieces
	def can_move?(x_dest, y_dest)
		if ((x_dest - @cordx != 0) && (y_dest == @cordy)) || ((y_dest - @cordy != 0) && (x_dest == @cordx))
			puts "yes" 
		else
			puts "no"
		end
	end
end


# 		def can_move?(x_dest, y_dest)
# 		while x_dest - @cordx != 0 || ydest - @cordy != 0
# 			if x_dest == @corx || y_dest == @cordy
# 			 "yes" 
# 			else
# 				"no"

# 			end
# 		end

# if x_dest == @corx || y_dest == @cordy