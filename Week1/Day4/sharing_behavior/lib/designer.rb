class Designer 
	include Payable
	include CaffeineConsumer

	def design_things
		consume_caffeine
		select_typography
		select_colors
		receive_salary
		consume_caffeine
		
	end

	def select_typography
		#[...]
		puts "you selected arial"
	end

	def select_colors
		#[...]
		puts "you selected green"
	end
end