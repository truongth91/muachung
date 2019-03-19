class RemoveIsadminFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :isadmin, :boolean
  end
end
