class ApplicationController < ActionController::Base
  protect_from_forgery
  include VotesHelper


  def get_tags_string(tutorial)
    @tags = ""
    tutorial.tags.each do |tag|
      @tags += tag.content + ' '
    end
  end

 
  
end
