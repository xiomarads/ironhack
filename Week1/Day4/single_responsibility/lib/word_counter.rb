class WordCounter
	@counter = counter
end

	def user_word_counter
		puts "Please input your username: "
		userinfo = gets.chomp
		if userinfo == @username
			puts userinfo.length
		end



