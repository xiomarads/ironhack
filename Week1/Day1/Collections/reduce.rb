# How to do it with each

heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]
total_lengths = 0

# heroes_array.each do |x|
# 	total_lengths += x.total_length
# end

# puts total_lengths.to_f/ heroes_array.total_length

# #--------------------

total_lengths = heroes_array.reduce(0) do |sum, x|

	puts "Sum: #{sum}"
	puts "X: #{x}"
	puts "X length: #{x.length}"
	puts "Result This Round: #{sum + x.length}"
	puts "-----------------"

	sleep 5 #wait one second or gets.chomp upon hitting enter

	sum + x
	end

	puts ""
	puts "FINAL RESULT IS: #{total_lengths}"
	puts "AVERAGE: #{total_lengths.to_f / heroes_array.length}"
