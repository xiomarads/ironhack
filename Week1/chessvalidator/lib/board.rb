class Board
	def initialize
	@pieces = [nil , [], [], [], [], [], [], [], []]
	end

	def add_piece(piece)
		@pieces [piece.cordx] [piece.cordy] = piece
	end

#movement method
#check if there is a piece
#call piece's movement
#check if movement is off board
#is movement possible?

	def can_move?(cordx, cordy , x_dest, y_dest)
		
		if @pieces == nil 
			puts "No piece at."
		elsif x_dest == cordx && y_dest == cordy
			puts "no change"
		elsif x_dest > 8 || y_dest > 8
			 puts "Offboard."
		else 
			@pieces[cordx][cordy].can_move?(x_dest, y_dest)
		end
	end
end

#create board class
#define add piece method
#define can_move method