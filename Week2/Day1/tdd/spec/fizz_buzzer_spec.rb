require_relative("../lib/fizz_buzzer.rb")

RSpec.describe FizzBuzzer do
	describe "#fizz_buzz" do 
		fz_bz = FizzBuzzer.new 
		let :fz_bz do 
			FizzBuzzer.new
		end

	it "takes an integer and returns a string" do
		expect(fz_bz.fizz_buzz(7)).to eq("7")
		end

	it "takes an integer and returns a string" do
		expect(fz_bz.fizz_buzz(11)).to eq("11")
	end

	it "if an integer is divisible by 3 it returns 'Fizz'" do
		expect(fz_bz.fizz_buzz(9)).to eq("Fizz")
		expect(fz_bz.fizz_buzz(12)).to eq("Fizz")
	end
	it "if an integer is divisible by 5 it returns 'Buzz'" do
		expect(fz_bz.fizz_buzz(10)).to eq("Buzz")
		expect(fz_bz.fizz_buzz(25)).to eq("Buzz")
	end
	it "if an integer is divisible by 3 or by 5 it returns 'FizzBuzz'" do
		expect(fz_bz.fizz_buzz(15)).to eq("FizzBuzz")
		expect(fz_bz.fizz_buzz(30)).to eq("FizzBuzz")
	end
end
end




