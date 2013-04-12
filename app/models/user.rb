class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :description

  has_many :tutorial_links
  has_many :tutorials 
  has_many :votes

  def voted?(votable)
    get_vote(votable).present?
  end

  def get_vote(votable)
    self.votes.where(votable_id: votable.id, :votable_type => votable.class.to_s).first
  end
 
end
