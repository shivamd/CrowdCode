class GraphsController < ApplicationController
  respond_to :json
  def index
    @tutorials = Tutorial.all
    respond_to do |format|
      format.json { render :json => @tutorials }
      format.html   
    end
  end
end
