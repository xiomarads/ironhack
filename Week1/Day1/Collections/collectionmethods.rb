# homes = [
#   Home.new("Nizar's place", "San Juan", 2, 42),
#   Home.new("Fernando's place", "Seville", 5, 47),
#   Home.new("Josh's place", "Pittsburgh", 3, 41),
#   Home.new("Gonzalo's place", "Málaga", 2, 45),
#   Home.new("Ariel's place", "San Juan", 4, 49)
# ]

# homes.each do |hm|
# 	puts "#{hm.name} in #{hm.city}" 
# 	puts "Price: #{hm.price} a night"
# end


# # Use the each method to print more information about each home. It should look something like this:

# # Nizar's place in San Juan
# # Price: $42 a night

# # Fernando's place in Seville
# # Price: $47 a night

# # Josh's place in Pittsburgh
# # Price: $41 a night

# # Gonzalo's place in Málaga
# # Price: $45 a night

# # Ariel's place in San Juan
# # Price: $49 a night

# cities = homes.map do |hm|
#   hm.city
# end

# puts cities

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

#0 

homes = [
  nizar = Home.new("Nizar's place", "San Juan", 2, 42),
  fernando = Home.new("Fernando's place", "Seville", 5, 47),
  josh = Home.new("Josh's place", "Pittsburgh", 3, 41),
  gonzalo = Home.new("Gonzalo's place", "Málaga", 2, 45),
  ariel = Home.new("Ariel's place", "San Juan", 4, 49),
  ike = Home.new("Ike's place", "Tampa", 6, 56),
  xiomi = Home.new("Xiomi's place", "Granada", 9, 100),
  chenje = Home.new("Chenje's place", "Harare", 8, 90),
  mary = Home.new("Mary's place", "Fortlauderadale", 7, 75),
  sara = Home.new("Sara's place", "Miami", 4, 50)
]

# homes.each do |hm|
#   puts hm.name
# end

def array_printer(array)
 array.each do | home |
   puts "#{home.name} |  in: #{home.city} |  houses: #{home.capacity} | at: #{home.price} per night"
 end
end

	puts "to sort prices high to low, input 'high', to sort prices low to high, input 'low'"
		user_input=gets.chomp
	if user_input == 'low'
		sorted = homes.sort! { |a,b|
			a.price <=> b.price }
		array_printer(sorted) 
	elsif user_input == 'high'
		sorted = homes.sort! {|a,b|
			b.price <=> a.price }
		array_printer(sorted)
	end

	puts "to sort prices by capacity, input 'sort by capacity'"
		user_input=gets.chomp
	if user_input == 'sort by capacity'
		sorted = homes.sort! { |a,b|
			a.capacity <=> b.capacity }
		array_printer(sorted) 
	else
		array_printer(array)
	end 

	puts "Type the city you're looking for: "
	user_city=gets.chomp.downcase
		filtered_homes = homes.select do |home|
			if home.city == user_city
				puts "#{user_city}"
				puts "#{home.name}"
				puts "#{home.price}"
			end
		end

# 	# Homes in San Juan
# san_juan_homes = homes.select do |hm|
#   # Keep hm only if its city is "San Juan"
#   hm.city == "San Juan"
# end

# Give the user the option to type in a city and only 
# show homes from that city. Use select to achieve this.


# Give the user the option to sort by price but with highest first. 
# Also give the user the option to sort by capacity

# puts "Array of Homes"
# array_printer(array_of_homes)
# puts

# sorted_array_of_homes = array_of_homes.sort do |a,b|
# 	a.price <=> b.price
# end

# puts "Sorted by price"
# array_printer (sorted_array_of_homes)
# puts


