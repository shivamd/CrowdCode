class Tutorial < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  belongs_to :user
  has_many :tags, through: :taggings
  has_many :taggings, as: :taggable

  validates :content, presence: true, length: { minimum: 100 }
  validates :title, presence: true, length: { minimum: 15 }
  validates :user_id, presence: true, numericality: true
end
