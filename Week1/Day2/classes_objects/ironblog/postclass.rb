class Post
	attr_accessor :title, :date, :text
	def initialize (title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def display
		puts @title
		puts @text
	end
end
