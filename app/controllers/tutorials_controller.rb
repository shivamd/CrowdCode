class TutorialsController < ApplicationController

	before_filter :authenticate_user!, only: [:new, :create]

	def new 
		@tutorial = Tutorial.new
	end

	def create 
		@tutorial = Tutorial.new(params[:tutorial])
		@tutorial.user_id = current_user.id
		if @tutorial.save 
			redirect_to @tutorial, notice: "Thanks for creating a tutorial"
		else
			render :new
		end
	end

	def show 
		@tutorial = Tutorial.find(params[:id])
	end
end