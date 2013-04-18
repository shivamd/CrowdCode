class StaticPagesController < ApplicationController

  def index
  	@tutorials = Tutorial.joins(:category).page(params[:page]).per_page(8)
  	@search = Tutorial.search(params[:q])
  	redirect_to tutorials_url unless params[:q].nil?
  end
  
end
