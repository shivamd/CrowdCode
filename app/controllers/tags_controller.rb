class TagsController < ApplicationController

	def index 
		@tags = Tag.with_tutorial_count
	end

	def show 
		@tag = Tag.find(params[:id])
		@tutorials = @tag.tutorials
	end
end
