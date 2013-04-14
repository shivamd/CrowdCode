class Category < ActiveRecord::Base
  attr_accessible :img, :name
  has_many :tutorials
  has_many :tutorial_links
end
