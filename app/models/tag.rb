class Tag < ActiveRecord::Base
  attr_accessible :content

  has_many :tutorials, through: :taggings, source: :taggable, source_type: "Tutorial"
  has_many :taggings
  before_create :sanitize
  validates :content, presence: true, format: { with: /^[\S]*$/ }

  def sanitize
    self.content.downcase! if self.content =~ /[A-Z]/
  end

  def self.with_tutorial_count
  	Tag.all.map do |t|
  	  { text: t.content, weight: t.tutorials.count, link: "http://localhost:3000/tags/#{t.id}" }
  	end
  end

end
