class AddIsadminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isadmin, :int
  end
end
