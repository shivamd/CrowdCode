class StaticPagesController < ApplicationController

  def index
  	@tutorials = Tutorial.joins(:category)
  end

  def about
  end

  def contact
  end
  
end
