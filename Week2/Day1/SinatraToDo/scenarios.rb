require_relative("lib/sinatratodo.rb")

task = Task.new("Water garden")
puts task.id

# task2 = Task.new("Bake cookies")
# puts task2.id

# task3 = Task.new("Mail cards")
# puts task3.id

task = Task.new("Water garden")
task.complete?
# false

task = Task.new("Buy the milk")
task.completed?
# false
task.complete!
task.completed?
# true
