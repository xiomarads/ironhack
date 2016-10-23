class BlackPawn < Pieces
	def can_move?(x_dest, y_dest)
		if  (y_dest == 5 && @cordy == 7 && @cordx == x_dest) || (@cordx == x_dest && @cordy - y_dest == 1)
			puts "yes"
		else
			 puts "no"
		end
	end
end

class WhitePawn < Pieces
	def can_move?(x_dest, y_dest)
		if (y_dest == 4 && @cordy == 2 && @cordx == x_dest) || (@cordx == x_dest && @cordy - y_dest == - 1)
			puts "yes"
		else
			 puts "no"
		end
	end
end
