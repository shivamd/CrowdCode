class TagsController < ApplicationController

	def index 
		@tags = Tag.all
    @search = Tag.search(params[:q])
    @tags = @search.result 
	end

	def show 
		@tag = Tag.find(params[:id])
		@tutorials = @tag.tutorials
	end
end
