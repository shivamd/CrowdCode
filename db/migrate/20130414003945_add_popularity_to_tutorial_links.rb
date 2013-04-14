class AddPopularityToTutorialLinks < ActiveRecord::Migration
  def change
    add_column :tutorial_links, :popularity, :integer
  end
end
