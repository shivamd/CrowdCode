class GraphsController < ApplicationController
  respond_to :js, :html

  def index
    @tutorials = Tutorial.all
    respond_to do |format|
    format.json { render :json => @tutorials.to_json }
    format.html
    end
  @tutorials.to_json    
  end
end
