require_relative("lib/pieces.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")

#RookPieces

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")
puts "------------------------"
puts "Valid Rook movements"
puts "------------------------"

p black_rook_left.can_move?(1,5)  == "yes"
p black_rook_left.can_move?(5,8)  == "yes"
p white_rook_right.can_move?(8,3) == "yes"
p white_rook_right.can_move?(2,1) == "yes"


puts "------------------------"
puts "Invalid Rook movements"
puts "------------------------"
p black_rook_left.can_move?(2,7)  == "no"
p black_rook_left.can_move?(2,5)  == "no"
p white_rook_right.can_move?(3,5) == "no"
p white_rook_right.can_move?(5,6) == "no"


#King Pieces

black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")
puts "------------------------"
puts "Valid King movements"
puts "------------------------"

p black_king.can_move?(5, 7) == "yes"
p black_king.can_move?(6, 7) == "yes"
p white_king.can_move?(6, 2) == "yes"
p white_king.can_move?(5, 2) == "yes"

puts "------------------------"
puts "Invalid King movements"
puts "------------------------"

p black_king.can_move?(5,4)  == "no"
p black_king.can_move?(7,5)  == "no"
p white_king.can_move?(7,2) == "no"
p white_king.can_move?(1,5) == "no"
puts "------------------------"
#Knight Pieces
puts "------------------------"

black_knight = Knight.new(4, 4, "black")
white_knight = Knight.new(4, 4, "white")
puts "------------------------"
puts "Valid Knight movements"
puts "------------------------"

p black_knight.can_move?(5, 6) == "yes"
p black_knight.can_move?(3, 6) == "yes"
p white_knight.can_move?(3, 2) == "yes"
p white_knight.can_move?(5, 2) == "yes"

puts "------------------------"
puts "Invalid Knight movements"
puts "------------------------"

p black_knight.can_move?(7, 5) == "no"
p black_knight.can_move?(4, 5) == "no"
p white_knight.can_move?(4, 6) == "no"
p white_knight.can_move?(7, 6) == "no"

puts "------------------------"
#Bishop Pieces 
puts "------------------------"

black_bishop = Bishop.new(5, 4, "black")
white_bishop = Bishop.new(5, 4, "white")
puts "------------------------"
puts "Valid Bishop movements"
puts "------------------------"

p black_bishop.can_move?(6, 5) == "yes"
p black_bishop.can_move?(7, 6) == "yes"
p white_bishop.can_move?(4, 5) == "yes"
p white_bishop.can_move?(4, 3) == "yes"

puts "------------------------"
puts "Invalid Bishop movements"
puts "------------------------"

p black_bishop.can_move?(6, 4) == "no"
p black_bishop.can_move?(4, 4) == "no"
p white_bishop.can_move?(5, 3) == "no"
p white_bishop.can_move?(5, 2) == "no"

puts "------------------------"
#Queen Pieces 
puts "------------------------"

black_queen = Queen.new(4, 5, "black")
white_queen = Queen.new(4, 5, "white")

puts "------------------------"
puts "Valid Queen movements"
puts "------------------------"

p black_queen.can_move?(5, 6) == "yes"
p black_queen.can_move?(6, 7) == "yes"
p white_queen.can_move?(7, 8) == "yes"
p white_queen.can_move?(3, 4) == "yes"

puts "------------------------"
puts "Invalid Queen movements"
puts "------------------------"

p black_queen.can_move?(5, 7) == "no"
p black_queen.can_move?(6, 4) == "no"
p white_queen.can_move?(7, 3) == "no"
p white_queen.can_move?(3, 2) == "no"

puts "------------------------"
#Pawn Pieces 
puts "------------------------"

black_pawn = BlackPawn.new(7, 7, "black")
white_pawn = WhitePawn.new(2, 2, "white")

puts "------------------------"
puts "Valid Pawn movements"
puts "------------------------"

p black_pawn.can_move?(7, 6) == "yes"
p black_pawn.can_move?(7, 5) == "yes"
p white_pawn.can_move?(2, 3) == "yes"
p white_pawn.can_move?(2, 4) == "yes"

puts "------------------------"
puts "Invalid Pawn movements"
puts "------------------------"

p black_pawn.can_move?(7, 3) == "no"
p black_pawn.can_move?(7, 2) == "no"
p white_pawn.can_move?(2, 6) == "no"
p white_pawn.can_move?(2, 7) == "no"

