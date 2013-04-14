class StaticPagesController < ApplicationController

  def index
  	@tutorials = Tutorial.joins(:category) + TutorialLink.joins(:category)
  end

  def about
  end

  def contact
  end
  
end
