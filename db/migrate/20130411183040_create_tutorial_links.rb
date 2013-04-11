class CreateTutorialLinks < ActiveRecord::Migration
  def change
    create_table :tutorial_links do |t|
      t.string :title
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
