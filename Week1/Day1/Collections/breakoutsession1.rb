#Loops
#number arrays

year = 1972

while year <= 2016
	puts year

	year += 4
end

#or

1792.upto(2016) do |year|
end

#Loops
#string arrays

dogs = ["chichuaha", "german sheperd", "labrador", "border collie", "rhodesian ridgeback", "shiba inu"]

for index in 0..(dogs.length - 1)
	puts "I would like to purchase a #{dogs[index]}"
end

#or

dogs each.do |a_dog|
puts "I would like to purchase a #{a_dog}"
end

