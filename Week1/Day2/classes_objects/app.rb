require_relative("lib/user.rb")
require_relative("lib/car.rb")

nizar = User.new("Nizar", "nizar@ironhack.com", 30, "ambigous", "male")
jose = User.new("Jose", "jose@example.com", 36, "ambigous", "male")

nizar.login
jose.greet

#magical connection between new and def initialize. def initialize (name, email, age, ethnicity, ambigous)
#when adding the attributes to new user, make sure you allow the class to handle them.
#the constructor "initialize method" will allow the class to handle those attributes.
#created the first user and gave him acces to the behavior
#this user has no identity yet

first_car = Car.new("Toyota", "red", 2015, "Carlos", "Broom")
second_car = Car.new("BMW", "blue", 2010, "Maria", "Broooom")

first_car.honk
second_car.honk 


