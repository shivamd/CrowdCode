class ApplicationController < ActionController::Base
  protect_from_forgery

<<<<<<< HEAD
  
=======

  def flash_update_success
    flash[:notice] = "Successfully updated!"
  end

  def flash_update_failed
    flash[:error] = "Something went wrong, please try again."
  end

  def get_tags_string(tutorial)
    @tags = ""
    tutorial.tags.each do |tag|
      @tags += tag.content + ' '
    end
    p @tags

  end
>>>>>>> update
end
