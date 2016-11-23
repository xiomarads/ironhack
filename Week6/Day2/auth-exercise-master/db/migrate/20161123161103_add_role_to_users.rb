class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: "user"
    # if we don't specify default "user", the value will be nil...but functionality does not change.
  end
end
