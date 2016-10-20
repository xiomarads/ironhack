require_relative("lib/blogclass.rb")
require_relative("lib/postclass.rb")
require_relative("lib/sponsoredpost.rb")


blog = Blog.new #empty blog
blog.add_post Post.new("Post Title 1",Time.new(2004,03,17),"Post 1 text")
blog.add_post Post.new("Post Title 2",Time.new(2005,05,20),"Post 2 text")
blog.add_post Post.new("Post Title 3",Time.new(2010,01,3),"Post 3 text")
blog.add_post SponsoredPosts.new("Post Title 3",Time.new(2010,01,3),"Post 3 text")

#look at time.now(it subtracts or add seconds)

blog.publish_front_page
# post.sortedpost(post)