class AddPopularityToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :popularity, :integer
  end
end
