class TutorialLinksController < ApplicationController

	before_filter :authenticate_user!, only: [:new, :create]

	def new
		@tut_link = TutorialLink.new
	end

	def create
		@tut_link = TutorialLink.new(params[:tutorial_link])
		@tut_link.user_id = current_user.id
		if @tut_link.save 
			@tut_link.create_tags(params[:tag])
			redirect_to @tut_link, notice: "Submitted Tutorial!"
		else
			render :new
		end
	end

	def index 
		@tut_links = TutorialLink.all
	end

	def edit
		@tutorial = TutorialLink.find(params[:id])
    get_tags_string(@tutorial)
	end

	def update
		 @tutorial = TutorialLink.find(params[:id])
      if @tutorial.update_attributes(params[:tutorial_link])
        @tutorial.tags.clear
        @tutorial.create_tags(params[:tag])
        flash_update_success
        redirect_to @tutorial
      else
         flash_update_failed
         redirect_to :back
      end
	end

  def show 
    @tutorial = TutorialLink.find(params[:id])
    get_tags_string(@tutorial)
    @comments = @tutorial.comments.all
    @comment = @tutorial.comments.new
  end

	def destroy
    @tutorial = TutorialLink.find(params[:id]).destroy
    redirect_to '/profile'
  end

end
