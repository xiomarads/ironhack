require "sinatra"

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