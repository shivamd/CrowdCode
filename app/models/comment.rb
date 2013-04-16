class Comment < ActiveRecord::Base
  attr_accessible :content, :commentable_type, :commentable_id, :user_id
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
  
  belongs_to :user

  validates :content, presence: true
  validates :commentable_type, presence: true
  validates :user_id, presence: true
  validates :commentable_id, presence: true



  def get_tutorial
    if self.commentable_type == "Comment"
      Tutorial.find(Comment.find(self.commentable_id).commentable_id)
    else
      self.commentable_type.constantize.find(self.commentable_id)
    end
  end
end
