class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|  #table columns #rails takes model's names into plural, id is omitted because...every table will have an id anyway.
      t.string :name

      t.timestamps
    end
  end
end

#this is code that can change the database, but we need to run a command to to actually make change happen.
