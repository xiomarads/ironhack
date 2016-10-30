require 'sinatra'
require 'sinatra/reloader'
require_relative('lib/sinatratodo.rb')
require_relative('lib/todolist.rb')
require_relative("lib/game.rb")

game = Game.new


list = TodoList.new
list.add_task Task.new("Water the garden")
list.add_task Task.new("Bake cookies")
list.add_task Task.new("Mail cards")

get '/tasks' do 
@tasks = list.tasks
	erb(:tasks_index)
end 

get '/new_task' do
	erb(:new_task)
end

post '/create_task' do
the_content = params[:new_task]
newtask = Task.new(the_content)
list.add_task(newtask)
redirect("/tasks")
end

post '/complete_task' do

	the_id_of_task = params[:id].to_i
	x = list.find_task_by_id(the_id_of_task)
	puts "banana"
	puts the_id_of_task
	puts x.id
	x.complete!
	redirect("/tasks")

end