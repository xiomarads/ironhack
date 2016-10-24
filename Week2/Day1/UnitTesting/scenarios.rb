require_relative("lib/string_calculator.rb")
#scenarios.rb

the_calculator = StringCalculator.new

p the_calculator.add("7,7") == 14
p the_calculator.add("8,4") == 12

p the_calculator.add("6") == 6
p the_calculator.add("3") == 3

p the_calculator.add("") == 0

# #Bonus
# p p the_calculator.add == 0