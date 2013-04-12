class TutorialsController < ApplicationController

	before_filter :authenticate_user!, only: [:new, :create]

	def new 
		@tutorial = Tutorial.new
	end

	def edit
		@tutorial = Tutorial.find(params[:id])
		get_tags_string(@tutorial)
	end

	def update
		@tutorial = Tutorial.find(params[:id])
		@tutorial.update_attributes(params[:tutorial])
		@tutorial.tags.clear
		@tutorial.create_tags(params[:tag])
		redirect_to @tutorial
	end


	def destroy

	end

	
	def create 
		@tutorial = Tutorial.new(params[:tutorial])
		@tutorial.user_id = current_user.id
		if @tutorial.save 
		  @tutorial.create_tags(params[:tag])
			redirect_to @tutorial, notice: "Thanks for creating a tutorial"
		else
			render :new
		end
	end

	def show 
		@tutorial = Tutorial.find(params[:id])
		@markdown = MARKDOWN.render(@tutorial.content)
	end
end
