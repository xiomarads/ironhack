require "sinatra"
require "sinatra/reloader" if development? 
require "pry" if development?

require_relative "lib/product.rb"

get "/"	do 
	erb :home
end