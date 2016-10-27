require "sinatra"
require "sinatra/reloader" if development? 
require "pry" if development?

#if development means that it will only happen in development mode and not production live mode. it is a method that sinatra already has.
#if you change the classes inside of lib, then you do have to restart.
#always use this reloader gem

enable(:sessions)

get "/save_to_session/:thing" do
	session[:beverage] = params[:thing]
	redirect to("/")
end

get "/" do
	@drank = session[:beverage]

	erb(:home)
end


get "/" do 
	erb(:home)
end

get "/hipage" do 
	erb(:hipage)
end

get "/about" do 

	erb(:about)  #has to be the last piece in the block. Any other logic will go on top of this erb line.
	
end


get "/best_pizza" do
	@toppings = ["tomatoes", "basil", "garlic", "onion", "Obama", "Beyoncé"]
	erb(:best_pizza)
end