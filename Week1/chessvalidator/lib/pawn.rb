class BlackPawn < Pieces
	def can_move?(x_dest, y_dest)
		if  (y_dest == 5 && @cordy == 7 && @cordx == x_dest) || (@cordx == x_dest && @cordy - y_dest == 1)
			 "yes"
		else
			 "no"
		end
	end
end

class WhitePawn < Pieces
	def can_move?(x_dest, y_dest)
		if (y_dest == 4 && @cordy == 2 && @cordx == x_dest) || (@cordx == x_dest && @cordy - y_dest == - 1)
			 "yes"
		else
			 "no"
		end
	end
end

# class BlackPawn < Pieces
# 	def can_move?(x_dest, y_dest)
# 		if (@cordy == 7) && ((x_dest == @cordx && y_dest == @cordy - 2) ||
# 				(y_dest == @cordy - 1))
# 				# (x_dest == @cordx && y_dest - @cordy == (-1)))
# 				"true"
# 		else
# 			"false"
# 		end
# 	end
# end

# class WhitePawn < Pieces
# 	def can_move?(x_dest, y_dest)
# 		if ((@cordy == 2 && (x_dest == @cordx && y_dest - @cordy == (2)) ||
			
# 				# (x_dest == @cordx && y_dest - @cordy == (1))))
# 				"true"
# 		else
# 			"false"
# 		end
# 	end
# end




