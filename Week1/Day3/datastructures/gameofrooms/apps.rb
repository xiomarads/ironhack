require_relative("lib/gameclass.rb")
require_relative("lib/roomclass.rb")

  # current_room = 0 

game = Game.new
game.add_room(Room.new("VoteTrump", "Vote for me. Exit S to move to the next American chapter", "N", "S"))
game.add_room(Room.new("VoteClinton", "You can vote for me(don't fool yourself). Exit N to move to the greatest chapter in American history.", "S", "N"))
game.add_room(Room.new("The next American Chapter", "Grab your passport to flee. Or get lube to get screwed." "E", "W"))
game.add_room(Room.new("The greatest chapter in American history", "   " "W", "E"))
game.add_room(Room.new("", "N", "N"))

game.moverooms