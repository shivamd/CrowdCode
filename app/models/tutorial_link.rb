class TutorialLink < ActiveRecord::Base
  attr_accessible :title, :url, :user_id

  belongs_to :user


  validates :title, presence: true, length: { minimum: 15 }
  VALID_URL_REGEX = /^(http|https):\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?$/ix
  validates :url, presence: true, format: { with: VALID_URL_REGEX }, uniqueness: true
  validates :user_id, presence: true, numericality: { only_integer: true }
end