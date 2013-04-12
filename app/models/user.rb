class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :description

  has_many :tutorial_links
  has_many :tutorials 
  has_many :comments
  
  def minutes_ago
    @minutes = ((Time.now - self.created_at)/60).to_i
  end

end
