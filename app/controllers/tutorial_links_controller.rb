class TutorialLinksController < ApplicationController
	def new
		@tut_link = TutorialLink.new
	end

	def create
		@tut_link = TutorialLink.new(params[:tutorial_links])
		if @tut_link.save 
			redirect_to tutorial_links, notice: "Submitted Tutorial, it will be shortly uploaded"
		else
			render :new
		end
	end

	end

	def show
	end

	def index 
		@tut_links = TutorialLink.all
	end
end