class Comment < ActiveRecord::Base
  attr_accessible :content, :commentable_type, :commentable_id
  belongs_to :commentable, polymorphic: true
  validates :content, presence: true

end
