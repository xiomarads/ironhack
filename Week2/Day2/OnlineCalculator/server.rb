require "sinatra"
require_relative("lib/Calculator.rb")

get "/add" do
erb(:add)
end

get "/home" do
	erb(:home)
end

post "/calculate" do
	@operation = params[:submit]
	@firstnum = params[:first_number].to_f
	@secondnum = params[:second_number].to_f
	cal = Calculator.new(@firstnum, @secondnum)

		if params [:operation] == add
		@result = cal.add

		elsif params [:operation] == subtract
		@result = cal.subtract

		elsif params [:operation] == multiply
		@result = cal.multiply
		
		elsif params [:divide] == divide
		@result = cal.divide
		end

	erb(:results)	
	end

	# post "/calculate_add" do
	# first = params[:first_number].to_f
	# second = params[:second_number].to_f
	# result = first + second
	# "#{first} + #{second} = #{result}"