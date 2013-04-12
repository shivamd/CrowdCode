class RemoveUsernameFromComments < ActiveRecord::Migration
  def up
  	remove_column :comments, :username
  end

  def down
  	add_column :comments, :username, :string
  end
end
