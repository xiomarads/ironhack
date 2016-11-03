require_relative "lib/animal.rb"

puts ""
thunder = Animal.new("Thunder", "German Sheperd", "Woof?")

thunder.chase
thunder.bark

puts ""
bear = Animal.new("Bear", "Boder Collie", "Uooah")

bear.chase
bear.bark