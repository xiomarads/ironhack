require_relative("lib/gameclass.rb")
require_relative("lib/roomclass.rb")

  # current_room = 0 


game = Game.new
game.add_room(Room.new("One", "N", "S"))
game.add_room(Room.new("Two", "S", "N"))
game.add_room(Room.new("Three", "E", "W"))
game.add_room(Room.new("Four", "W", "E"))
game.add_room(Room.new("Five", "N", "N"))

game.moverooms
