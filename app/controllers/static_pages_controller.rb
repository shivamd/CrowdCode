class StaticPagesController < ApplicationController

  def index
  	@tutorials = Tutorial.joins(:category).page(params[:page]).per_page(10)
  end

  def about
  end

  def contact
  end
  
end
