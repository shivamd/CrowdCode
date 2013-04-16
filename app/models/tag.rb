class Tag < ActiveRecord::Base
  attr_accessible :content

  has_many :tutorials, through: :taggings, source: :taggable, source_type: "Tutorial"
  has_many :taggings
  before_create :sanitize
  validates :content, presence: true, format: { with: /^[\S]*$/ }

  def sanitize
    self.content.downcase! if self.content =~ /[A-Z]/
  end
end
