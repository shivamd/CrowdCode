class AddCategoryToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :category_id, :integer
    add_column :tutorial_links, :category_id, :integer
  end
end
