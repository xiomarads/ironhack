require 'date'
class Payroll
    def initialize(employees)
        @employees = employees
    end

#private methods, just add private above the method, and it will only be used
#inside of that method. 

    def notify_employee()
        today = Date.today
        today.tuesday?
        	@employees.each do |employee|
        	puts "Emailed to #{employee.email}. You've been paid"
     		end
   
  	end
  def pay_employees
  	@employees.each do |employee|
  		totalpayment = employee.calculate_salary * 0.82
  		puts "#{employee.name} is getting #{totalpayment.to_i}"
  	end
  		total_pay = @employees.reduce(0) do |sum, x|
  			sum + x.calculate_salary
  		end
  		puts "The total payroll for the week is #{(total_pay * 0.82).to_i}$"
  end


end