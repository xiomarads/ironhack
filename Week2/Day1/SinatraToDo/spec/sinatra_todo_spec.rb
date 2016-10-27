require_relative("../lib/sinatratodo.rb")

RSpec.describe Task do 

	describe "#complete?" do
		it "it returns false for new tasks" do
			task = Task.new("Water garden")

			expect(task.complete?).to eq(false)
		end
	end

	describe "#complete!" do
		it "sets @completed to true" do
			task = Task.new("Water garden")
			task.complete!
			expect(task.complete!).to eq(true)
		end
	end

	describe "#make_incomplete!" do
		it "sets @completed to false." do
			task = Task.new("Water garden")

			task.complete!
			task.make_incomplete!

			expect(task.complete?).to eq(false)
		end
	end

	describe "update_content!" do
		it "changes the task's text." do
			task = Task.new("Water water")

			task.update_content!("Water garden")
			expect(task.content).to eq("Water garden")
		end
	end
end




	