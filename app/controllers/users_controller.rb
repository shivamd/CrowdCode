class UsersController < ApplicationController

  def show

   active_user = params[:username] || current_user.username
   @user =  User.includes(:tutorials, 
    											:comments, :votes).find_by_username(active_user)
  end
end
