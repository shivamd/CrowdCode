class ApplicationController < ActionController::Base
  protect_from_forgery
  include VotesHelper
  before_filter :get_categories

  def get_tags_string(tutorial)
    @tags = ""
    tutorial.tags.each do |tag|
      @tags += tag.content + ' '
    end
  end

  def get_categories
    @categories ||= Category.all
  end

  def authenticate_user!()
  	if request.xhr? && !current_user
  		render :json => new_user_session_path, :status => :unauthorized
  	else	
  		super
  	end
  end
end
