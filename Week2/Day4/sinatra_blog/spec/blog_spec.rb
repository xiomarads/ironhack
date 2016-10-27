require_relative("../lib/bog.rb")

RSpec.describe Blog do 
	before(:each) do
		@blog = Blog.new(...)
	end


	it ("#posts returns list of posts") do
		expect(@blog.posts).to #??? which matcher should we use?
	end
end