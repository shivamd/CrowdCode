class TagsController < ApplicationController

	def index 
    @search = Tag.search(params[:q])
    @tags = @search.result 
		@tags = Tag.all.sort {|a,b| b.taggings.count <=> a.taggings.count }
    @split_tags = @tags.each_slice(4).to_a
	end

	def show 
		@tag = Tag.find(params[:id])
		@tutorials = @tag.tutorials
	end
end
