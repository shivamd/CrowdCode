class TutorialsController < ApplicationController

	before_filter :authenticate_user!, only: [:new, :create]

	def new 
		@tutorial = Tutorial.new
	end

	def edit
		@tutorial = Tutorial.find(params[:id])
		get_tags_string(@tutorial)
	end

	def index
		@tutorials = Tutorial.all
		@search = Tutorial.search(params[:q])
		@tutorials = @search.result	
	end

	def update
		@tutorial = Tutorial.find(params[:id])
		if @tutorial.update_attributes(params[:tutorial])
			@tutorial.tags.clear
			@tutorial.create_tags(params[:tag])
			flash_update_success
			redirect_to @tutorial
		else
      flash_update_failed
      redirect_to :back
    end
	end


	def destroy
		@tutorial = Tutorial.find(params[:id]).destroy
		redirect_to '/profile'
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
		get_tags_string(@tutorial)
    @comments = @tutorial.comments.includes(:user, :category)
    @comment = @tutorial.comments.new
	end
end
