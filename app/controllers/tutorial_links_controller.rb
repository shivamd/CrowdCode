class TutorialLinksController < ApplicationController

	before_filter :authenticate_user!, only: [:new, :create]

	def new
		@tutorial = TutorialLink.new
	end

	def create
		@tutorial = TutorialLink.new(params[:tutorial_link])
		@tutorial.user_id = current_user.id
		if @tutorial.save 
			@tutorial.create_tags(params[:tag])
			redirect_to @tutorial, notice: "Submitted Tutorial!"
		else
			render :new
		end
	end

	def index 
		@tutorials = TutorialLink.all
		@search = TutorialLink.search(params[:q])
		@tutorials = @search.result
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
		  redirect_to @tutorial, notice: "Successfully updated!"
	  else
      redirect_to :back, notice: "Something went wrong, please try again"
    end
	end

  def show 
    @tutorial = TutorialLink.joins(:category).find(params[:id])
    get_tags_string(@tutorial)
    @category = Category.where('id = ?', @tutorial.category_id)
    @comments = @tutorial.comments.includes(:user)
    @comment = @tutorial.comments.new
  end

	def destroy
    @tutorial = TutorialLink.find(params[:id]).destroy
    redirect_to '/profile'
  end  

end
