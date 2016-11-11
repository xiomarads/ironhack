class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.date :deadline
      t.integer :user_id

      t.timestamps
    end
  end
end
