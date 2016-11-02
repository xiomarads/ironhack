countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
countries.each do |a_country|
  puts " "
  puts "Countries represented in this room:"

countries.each do |a_country|
  puts "Some of us are from #{a_country}!!"
puts ""
end
end



#creates a new string of uppercased countries

uppercase_countries = countries.map do |a_country|
  a_country.upcase
end
puts "COUNTRIES REPRESENTED IN THIS ROOM"
puts "----------------------------------"
uppercase_countries.each do |a_country|
  puts "Some of us are from #{a_country}!!"
end
