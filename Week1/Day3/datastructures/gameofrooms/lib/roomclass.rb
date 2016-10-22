class Room
	attr_accessor :name, :description, :entry, :exit
		def initialize(name, description, entry, exit)
			@name = name
			@description = description
			@entry = entry
			@exit = exit
		end

end


