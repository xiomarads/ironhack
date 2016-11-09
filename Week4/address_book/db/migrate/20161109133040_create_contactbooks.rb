class CreateContactbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :contactbooks do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
