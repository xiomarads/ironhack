class Programmer 
	include Payable
	include CaffeineConsumer

	def program
		consume_caffeine
		do_wonderful_things_with_computers
		receive_salary	
		consume_caffeine
	end

	def do_wonderful_things_with_computers
		# [...]
		puts "code"
	end
end
