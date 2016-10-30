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
	@first_movies = @movies[0..14]
	@movies_with_posters = []
		@first_movies.each do |movie|
			if movie.poster != nil 
				@movies_with_posters.push(movie)
			end
		end

 	@nine_movies = @movies_with_posters.first(9)
 	@movie_years = []
 	@nine_movies.each do |movie|
 		@movie_years.push(movie.year)
 	end

 	@random_year = @movie_years.sample


erb :results
end

post "/check_result" do
	
	if (params[:random_year]) == (params[:correct_year])
		"true"
	else
		"false"
	end

end





	


	



	









