class Authenticator
	attr_accessor :username, :password
		def initialize(username, password)
		@username = username
		@password = password
		end


	def user_info
			puts "Please enter your username: "
		userinfo = gets.chomp
		if userinfo == @username
			puts "Your username is correct"
			#methodfor counting
		end
	end

	def password_info
			puts "Please enter your password: "
		passwordinfo = gets.chomp
		if passwordinfo == @password
			puts "Your password is correct"
			#methodfor counting
		end
	end
end

		


