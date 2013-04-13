class Vote < ActiveRecord::Base
  attr_accessible :score, :user_id, :votable_id, :votable_type
  belongs_to :user
  belongs_to :votable, :polymorphic => true
  validates_presence_of :score, :user_id, :votable_id
  validates_inclusion_of :score, :in => [-1,1]
  validates_presence_of :votable_type
  validates_inclusion_of :votable_type, :in => ["Tutorial", "TutorialLink"]
end
