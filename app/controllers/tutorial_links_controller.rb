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
			redirect_to tutorial_links_path, notice: "Submitted Tutorial, it will be shortly uploaded"
		else
			render :new
		end
	end


	def index 
		@tut_links = TutorialLink.all
	end

end
