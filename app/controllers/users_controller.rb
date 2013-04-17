class UsersController < ApplicationController

  def profile
   active_user = params[:username] || current_user.username
   @user =  User.includes(:tutorials, 
    											:comments, 
                          :votes, 
                          :bookmarks).find_by_username(active_user)
  end

  def show
    @user = User.includes(:tutorials).find_by_username(params[:username])
  end
end
