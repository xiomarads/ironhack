class Blog
	attr_accessor :posts
	def initialize
	@posts = [ ]	
   	end

	def add_post(post)
  	@posts.push(post)
  	end

  	def publish_front_page
  			@posts.each do |post|
  			post.display 	
  		end 	
	end
end

