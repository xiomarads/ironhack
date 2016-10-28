require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"


get "/" do
	erb :home
end

get "/results" do
	erb :results
end

get "/search_results" do
	the_search = Imdb::Search.new(params[:user_word])
	@movies = the_search.movies
	@first_movies = @movies[0..8]
	@movies_with_posters = []
		@first_movies.each do |movie|
			if movie.poster != nil 
				@movies_with_posters.push(movie)
			end
		end

erb :results
end

# method to retrieve to receive year
# movie class is already in the imdb
# .year
# .poster
# poster will be the url in a poster in an image.
# don't loop over the entire array of movies on imdb







