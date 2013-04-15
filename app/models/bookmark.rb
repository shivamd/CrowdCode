class Bookmark < ActiveRecord::Base
  attr_accessible :tutorial_id, :user_id

  validates :tutorial_id, :user_id, presence: true, numericality: true
  belongs_to :user 
  belongs_to :tutorial
end
