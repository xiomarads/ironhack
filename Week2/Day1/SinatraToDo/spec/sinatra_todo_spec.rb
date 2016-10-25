require_relative("../lib/sinatratodo.rb")

RSpec.describe Task do 
	describe "#complete?" do
		it "it checks if instances of tasks are completed or not." do
			task1 = Task.new("Water garden")
			expect(task1.complete?).to eq(false)
		end
	end
	describe "#complete!" do
		it "changes the status of a task." do
			task1 = Task.new("Water garden")
			expect(task1.complete!).to eq(true)
		end
	end
	describe "#make_incomplete!" do
		it "makes completed status false." do
			task1 = Task.new("Water garden")

			task.complete!
			task.make_incomplete!

			expect(task1.make_incomplete?).to eq(false)
		end
	end
	describe "update_content!" do
		it "updates the task's text." do
			task1 = Task.new("Water garder")
			task.update.content!("Water garden")
			expect(task1.content).to eq("Water garden")
		end
	end
end




	