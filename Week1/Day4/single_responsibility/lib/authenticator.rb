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
			puts "You've been granted access'"
			#methodfor counting
		end
	end

	def password_info
			puts "Please enter your password: "
		passwordinfo = gets.chomp
		if passwordinfo == @password
			puts "Your access was denied, wrong password"
			#methodfor counting
		end
	end
end

		


