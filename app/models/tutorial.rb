class Tutorial < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :tags_attributes, :category_id, :url

  belongs_to :user
  has_many :tags, through: :taggings
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :taggings, as: :taggable, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy
  belongs_to :category
  has_many :bookmarks, dependent: :destroy
  before_save :clean_tutorial_url

  VALID_URL_REGEX = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
  validates :content, presence: true, length: { minimum: 100 }, if: :url?
  validates :url, presence: true, format: { with: VALID_URL_REGEX }, if: :content?
  validates :title, presence: true, length: { minimum: 10 } 
  validates :user_id, presence: true, numericality: true

  default_scope order("popularity desc")

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


  def self.update_popularity
    Tutorial.all.each do |tut|
      tut.popularity = tut.votes.count/(((Time.now - tut.created_at)/3600.0)**1.5)
      tut.save
    end
  end

  def content?
    content.blank?
  end

  def url?
    url.blank?
  end

  def bookmarked_by?(user)
    Bookmark.find_by_user_id_and_tutorial_id(user.id, self.id)
  end

  def clean_tutorial_url
    if self.url.present?
      self.url = self.url.gsub("http://", "")
    end
  end
end
