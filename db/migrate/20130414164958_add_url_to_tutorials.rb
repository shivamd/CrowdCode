class AddUrlToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :url, :string
  end
end
