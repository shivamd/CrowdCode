class GraphsController < ApplicationController
  respond_to :html, :json
  def index
  end

  def all
    tutorials = Tutorial.all
    @results = tutorials.map { |tutorial| tutorial.votes.count }
    respond_with @results
  end
end
