# "map" with.each

# added_one= [ ]

# [1,3,3].each do |item|
# 	added_one.push(item+1)
# end

# added_one

# "map"
# added_one = [1,2,3].map do |item|
# 	item+1
# end

# with map

# heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]

# # lowercase_array = heroes_array.map do |x|
# # 	x.downcase
# # end

# # puts lowercase_array

# lengths_array = heroes_array.map do |x|
# 	x.length
# end

# puts lengths_array

cities_array = ["tampa", "granada", "campdon", "havana", "Harare"]

capitalized_array = cities_array.map do |x|
	x.capitalize

end

puts capitalized_array



