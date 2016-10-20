class User
	def initialize(name, email, age, ethnicity, gender) #method
		@name = name
		@email = email
		@age = age
		@ethnicity = ethnicity
		@gender	= gender
	end

	def login  #method
		puts "#{@name} is logging in with #{@email}"
	end

	def greet  #method
		puts "Hello, my name #{@name}"
		puts "I am #{@age} years old"
	end

	def age
		@age
	end

	def gender
		@gender
	end
end
#created a class and defined the behavior/capabilities of that class.
