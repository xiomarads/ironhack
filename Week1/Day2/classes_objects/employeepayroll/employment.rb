class Employee
	attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	weekly_salary = @hourly_rate * @hours_worked
    end
end

module SalaryEmployee
	def pay_salary
		weekly_salary = @salary / 52
	end
end


class SalaryEmployee < Employee
	def initialize (name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculate_salary
		pay_salary
		#weekly_salary.round(2) (added by Nizar to round the number)
	end
end

class MultiPaymentEmployee < Employee
	include SalaryEmployee
	def initialize (name, email, salary, extrapay, totalhours)
		@name = name
		@email = email
		@salary = salary
		@extrapay = extrapay
		@totalhours = totalhours
	end

	def calculate_salary
		if @totalhours > 40 
			extrahours = @totalhours - 40
			extrapayment = @extrapay * extrahours
			weekly_salary = @salary / 52 + extrapayment
		else #No need to put else, there is only 1 option, so 
			#it is implied it won't do anything if 'if' is false.
			weekly_salary = @salary / 52
		end
	end


end