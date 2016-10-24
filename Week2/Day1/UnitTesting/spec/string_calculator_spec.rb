#spec/string_calculator_spec.rb
#go up one, outside of the spec/folder
require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do
	describe "#add" do #refers to the method add in string_calculator.rb
		the_calc = StringCalculator.new
		it "adds two numbers separated by commas" do #"it" is the add method above and in string_calculator.rb
			#the_calc.add("7,7") == 14
			expect(the_calc.add("7,7")).to eq(14) #rspec method
			expect(the_calc.add("8,4")).to eq(12)
		end
		it "returns the number for a single number" do
			expect(the_calc.add("6")).to eq(6)
		end
		it "returns 0 for the empty string" do
			expect(the_calc.add("")).to eq(0)

		end
	end
end
