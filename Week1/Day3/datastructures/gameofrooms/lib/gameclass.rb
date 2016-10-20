class Game
	attr_accessor :rooms, :current_room
	def initialize
		@rooms = [ ]
		@current_room = 0 
	end

	def add_room(room)
		@rooms.push(room)
	end

# 	def moverooms
# 		while current_room < @rooms.length
# 			puts "Select exit: " 
# 				user_input = gets.chomp
# 			if user_input == rooms[@current_room].exit
# 				@current_room += 1
# 				puts "You are in room #{rooms[@current_room].name}"
# 			else 
# 				puts "There is no exit. You are trapped."
# 			end
# 		end
# 	end
# end

	def moverooms
		while current_room < @rooms.length
			puts "Select exit: " 
				user_input = gets.chomp
			if current_room == @rooms.length && user_input == rooms[@current_room].exit
				puts "You've won."
			elsif user_input == rooms[@current_room].exit
				@current_room += 1
				puts "You are in room #{rooms[@current_room].name}"
			else 
				puts "There is no exit. You are trapped."
			end
		end
	end
end
