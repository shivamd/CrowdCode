class Comment < ActiveRecord::Base
  attr_accessible :content, :commentable_type, :commentable_id, :user_id
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :content, :commentable_type, :commentable_id, :user_id, presence: true


  def get_tutorial
    self.commentable_type.constantize.find(self.commentable_id)
  end
end
