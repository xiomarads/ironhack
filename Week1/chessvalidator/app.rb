require_relative("lib/pieces.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

#AddPieces

chessboard = Board.new

black_rook_left = Rook.new(1, 8, "black")
white_king = King.new(5, 1, "white")
black_queen = Queen.new(4, 5, "black")
black_pawn = BlackPawn.new(7, 7, "black")
black_bishop = Bishop.new(5, 4, "black")
black_knight = Knight.new(4, 4, "black")

chessboard.add_piece(black_rook_left)
chessboard.add_piece(white_king)
chessboard.add_piece(black_queen)
chessboard.add_piece(black_pawn)
chessboard.add_piece(black_bishop)
chessboard.add_piece(black_knight)

p chessboard.can_move?(1,8,1,7)
p chessboard.can_move?(5,1,5,2)
p chessboard.can_move?(4,5,5,6)
p chessboard.can_move?(7,7,6,7)
p chessboard.can_move?(5,4,6,5)
p chessboard.can_move?(4,4,5,4)

# chessboard.add_piece("Rook", 8, 8)
# chessboard.add_piece("King", 5, 8)
# chessboard.add_piece("Bishop", 3, 8)
# chessboard.add_piece("Bishop", 6, 8)
# chessboard.add_piece("Queen", 4, 8) 
# chessboard.add_piece("Knight", 2, 8)
# chessboard.add_piece("Knight", 7, 8)
# chessboard.add_piece("BlackPawn", 1, 7)
# chessboard.add_piece("BlackPawn", 8, 7)

# chessboard.add_piece("Rook", 1, 1)
# chessboard.add_piece("Rook", 8, 1)
# chessboard.add_piece("King", 5, 1)
# chessboard.add_piece("Bishop", 3, 1)
# chessboard.add_piece("Bishop", 6, 1)
# chessboard.add_piece("Queen", 4, 1) 
# chessboard.add_piece("Knight", 2, 1)
# chessboard.add_piece("Knight", 7, 1)
# chessboard.add_piece("WhitePawn", 1, 2)
# chessboard.add_piece("WhitePawn", 8, 2)

#Movements

# puts "------------------------"
# puts "Valid Movements"
# puts "------------------------"
# chessboard.can_move?(1, 8, 1, 7) 
# chessboard.can_move?(1, 1, 1, 2) 
# chessboard.can_move?(5, 1, 4, 2) 
# chessboard.can_move?(6, 1, 5, 2) 
# chessboard.can_move?(5, 8, 6, 7) 
# chessboard.can_move?(6, 8, 4, 6) 
# chessboard.can_move?(4, 8, 4, 5) 
# chessboard.can_move?(7, 8, 6, 7) 
# chessboard.can_move?(1, 7, 1, 6) 
# chessboard.can_move?(8, 7, 8, 6) 
# chessboard.can_move?(2, 1, 3, 2) 
# chessboard.can_move?(1, 2, 1, 3) 

# puts "------------------------"
# puts "Invalid Movements"
# puts "------------------------"
# chessboard.can_move?(8, 8, 7, 7)
# chessboard.can_move?(3, 8, 4, 8) 
# chessboard.can_move?(8, 1, 7, 2) 
# chessboard.can_move?(3, 1, 6, 3) 
# chessboard.can_move?(7, 1, 7, 3) 
# chessboard.can_move?(8, 2, 7, 4) 
# puts "------------------------"
# puts "No Movement Change"
# puts "------------------------"
# chessboard.can_move?(4, 1, 4, 1) 
# chessboard.can_move?(2, 8, 2, 8) 

# #PiecePositions 

# black_rook_left = Rook.new(1, 8, "black")
# black_king = King.new(5, 8, "black")
# black_knight = Knight.new(4, 4, "black")
# black_bishop = Bishop.new(5, 4, "black")
# black_queen = Queen.new(4, 5, "black")
# black_pawn = BlackPawn.new(7, 7, "black")
# white_rook_right = Rook.new(8, 1, "white")
# white_king = King.new(5, 1, "white")
# white_knight = Knight.new(4, 4, "white")
# white_bishop = Bishop.new(5, 4, "white")
# white_queen = Queen.new(4, 5, "white")
# white_pawn = WhitePawn.new(2, 2, "white")


# #RookPieces

# # black_rook_left = Rook.new(1, 8, "black")
# # white_rook_right = Rook.new(8, 1, "white")
# puts "------------------------"
# puts "Valid Rook movements"
# puts "------------------------"

# p black_rook_left.can_move?(1,5)  == "yes"
# p black_rook_left.can_move?(5,8)  == "yes"
# p white_rook_right.can_move?(8,3) == "yes"
# p white_rook_right.can_move?(2,1) == "yes"


# puts "------------------------"
# puts "Invalid Rook movements"
# puts "------------------------"
# p black_rook_left.can_move?(2,7)  == "no"
# p black_rook_left.can_move?(2,5)  == "no"
# p white_rook_right.can_move?(3,5) == "no"
# p white_rook_right.can_move?(5,6) == "no"


# #King Pieces

# # black_king = King.new(5, 8, "black")
# # white_king = King.new(5, 1, "white")
# puts "------------------------"
# puts "Valid King movements"
# puts "------------------------"

# p black_king.can_move?(5, 7) == "yes"
# p black_king.can_move?(6, 7) == "yes"
# p white_king.can_move?(6, 2) == "yes"
# p white_king.can_move?(5, 2) == "yes"

# puts "------------------------"
# puts "Invalid King movements"
# puts "------------------------"

# p black_king.can_move?(5,4)  == "no"
# p black_king.can_move?(7,5)  == "no"
# p white_king.can_move?(7,2) == "no"
# p white_king.can_move?(1,5) == "no"
# puts "------------------------"
# #Knight Pieces
# puts "------------------------"

# # black_knight = Knight.new(4, 4, "black")
# # white_knight = Knight.new(4, 4, "white")
# puts "------------------------"
# puts "Valid Knight movements"
# puts "------------------------"

# p black_knight.can_move?(5, 6) == "yes"
# p black_knight.can_move?(3, 6) == "yes"
# p white_knight.can_move?(3, 2) == "yes"
# p white_knight.can_move?(5, 2) == "yes"

# puts "------------------------"
# puts "Invalid Knight movements"
# puts "------------------------"

# p black_knight.can_move?(7, 5) == "no"
# p black_knight.can_move?(4, 5) == "no"
# p white_knight.can_move?(4, 6) == "no"
# p white_knight.can_move?(7, 6) == "no"

# puts "------------------------"
# #Bishop Pieces 
# puts "------------------------"

# # black_bishop = Bishop.new(5, 4, "black")
# # white_bishop = Bishop.new(5, 4, "white")
# puts "------------------------"
# puts "Valid Bishop movements"
# puts "------------------------"

# p black_bishop.can_move?(6, 5) == "yes"
# p black_bishop.can_move?(7, 6) == "yes"
# p white_bishop.can_move?(4, 5) == "yes"
# p white_bishop.can_move?(4, 3) == "yes"

# puts "------------------------"
# puts "Invalid Bishop movements"
# puts "------------------------"

# p black_bishop.can_move?(6, 4) == "no"
# p black_bishop.can_move?(4, 4) == "no"
# p white_bishop.can_move?(5, 3) == "no"
# p white_bishop.can_move?(5, 2) == "no"

# puts "------------------------"
# #Queen Pieces 
# puts "------------------------"

# # black_queen = Queen.new(4, 5, "black")
# # white_queen = Queen.new(4, 5, "white")

# puts "------------------------"
# puts "Valid Queen movements"
# puts "------------------------"

# p black_queen.can_move?(5, 6) == "yes"
# p black_queen.can_move?(6, 7) == "yes"
# p white_queen.can_move?(7, 8) == "yes"
# p white_queen.can_move?(3, 4) == "yes"

# puts "------------------------"
# puts "Invalid Queen movements"
# puts "------------------------"

# p black_queen.can_move?(5, 7) == "no"
# p black_queen.can_move?(6, 4) == "no"
# p white_queen.can_move?(7, 3) == "no"
# p white_queen.can_move?(3, 2) == "no"

# puts "------------------------"
# #Pawn Pieces 
# puts "------------------------"

# # black_pawn = BlackPawn.new(7, 7, "black")
# # white_pawn = WhitePawn.new(2, 2, "white")

# puts "------------------------"
# puts "Valid Pawn movements"
# puts "------------------------"

# p black_pawn.can_move?(7, 6) == "yes"
# p black_pawn.can_move?(7, 5) == "yes"
# p white_pawn.can_move?(2, 3) == "yes"
# p white_pawn.can_move?(2, 4) == "yes"

# puts "------------------------"
# puts "Invalid Pawn movements"
# puts "------------------------"

# p black_pawn.can_move?(7, 3) == "no"
# p black_pawn.can_move?(7, 2) == "no"
# p white_pawn.can_move?(2, 6) == "no"
# p white_pawn.can_move?(2, 7) == "no"





