class StringCalculator

def add(x)
	y = x.split(",")
		if x == ""
			return 0
		else
			total_lengths = y.reduce(0) do |sum, x|
			sum + x.to_i
		end
	end
end
end
