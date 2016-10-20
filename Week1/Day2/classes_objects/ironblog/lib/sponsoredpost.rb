class SponsoredPosts < Post
	def display
		puts "******#{@title}*******"
		puts @text
	end
end

