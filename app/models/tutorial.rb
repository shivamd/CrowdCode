class Tutorial < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :tags_attributes

  belongs_to :user
  has_many :tags, through: :taggings
  has_many :comments, as: :commentable
  has_many :taggings, as: :taggable, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy

  accepts_nested_attributes_for :tags
  accepts_nested_attributes_for :comments


  validates :content, presence: true, length: { minimum: 100 }
  validates :title, presence: true, length: { minimum: 15 } 
  validates :user_id, presence: true, numericality: true

  def create_tags(tags)
  	tags = tags.split(" ")
  	tags.each do |tag|
  		tag = Tag.find_or_create_by_content(tag)
  		Tagging.create(taggable_id: self.id, taggable_type: "Tutorial", tag_id: tag.id)
  	end
  end

    def author?(user)
    self.user == user
  end
  
  def vote_count
    self.votes.map(&:score).inject(:+)
  end
end
