class TagsController < ApplicationController

	def index 
		@tags = Tag.all
	end

	def show 
		tag = Tag.find(params[:id])
		@tutorials = tag.tutorials + tag.tutorial_links
	end
end