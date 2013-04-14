class Tagging < ActiveRecord::Base
  attr_accessible :taggable_id, :taggable_type, :tag_id

  belongs_to :tag 
  belongs_to :taggable, polymorphic: true

  validates :taggable_id, :tag_id, presence: true, numericality: true
  validates :taggable_type, presence: true
  validates_inclusion_of :taggable_type, in: ["Tutorial"]

end
