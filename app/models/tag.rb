class Tag < ActiveRecord::Base
  attr_accessible :content

  has_many :tutorials, through: :taggings, source: :taggable, source_type: "Tutorial"
  has_many :taggings

  validates :content, presence: true, format: { with: /^[\S]*$/ }
end
