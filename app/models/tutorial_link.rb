class TutorialLink < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :tags_attributes, :category_id

  belongs_to :user
  has_many :tags, through: :taggings
  has_many :taggings, as: :taggable, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :category

  validates :title, presence: true, length: { minimum: 15 }
  VALID_URL_REGEX = /^(http|https):\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?$/ix
  validates :url, presence: true, format: { with: VALID_URL_REGEX }, uniqueness: true
  validates :user_id, presence: true, numericality: { only_integer: true }

  def create_tags(tags)
  	tags = tags.split(" ")
  	tags.each do |tag|
  		tag = Tag.find_or_create_by_content(tag)
  		Tagging.create(taggable_id: self.id, taggable_type: "TutorialLink", tag_id: tag.id)
  	end
  end

  def author?(user)
    self.user == user
  end
  
  def vote_count
    self.votes.map(&:score).inject(:+)
  end

  def self.update_popularity
    TutorialLink.all.each do |tut|
      tut.popularity = tut.votes.count/(((Time.now - tut.created_at)/3600.0)**1.5)
      tut.save
    end
  end
end
