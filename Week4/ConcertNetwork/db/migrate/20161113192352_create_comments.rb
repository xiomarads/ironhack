class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.datetime :date
      t.text :comment
      t.integer :concert_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
