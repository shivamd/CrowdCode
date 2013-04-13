class UsersController < ApplicationController

  def show
   @user=  User.includes(:tutorials, 
    							:tutorial_links,
    							:comments).find_by_username(params[:username])
  end
end
