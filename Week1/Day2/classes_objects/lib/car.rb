class Car
	def initialize (brand, color, year, owner, sound)
		@brand = brand
		@color = color
		@year = year
		@owner = owner
		@sound = sound
	end
	
	def honk
		puts @sound
	end
end