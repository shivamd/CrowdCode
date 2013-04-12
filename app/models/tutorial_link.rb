class TutorialLink < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :tags_attributes

  belongs_to :user
  has_many :tags, through: :taggings
  has_many :taggings, as: :taggable
  has_many :votes, as: :votable
  accepts_nested_attributes_for :tags
  
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
  
end
