class Category < ActiveRecord::Base
  attr_accessible :img, :name
  has_many :tutorials
end
