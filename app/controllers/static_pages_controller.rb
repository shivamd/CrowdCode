class StaticPagesController < ApplicationController

  def index
  	@tutorials = Tutorial.joins(:category).page(params[:page]).per_page(8)
  end

  def about
  end

  def contact
  end
  
end
