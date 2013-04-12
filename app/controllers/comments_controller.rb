class CommentsController < ApplicationController
  def new
    
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    @comment.username = current_user.username
    if @comment.save
      @tutorial = TutorialLink.find(@comment.commentable_id)
      redirect_to @tutorial
    else
      redirect_to :back, notice: @comment.errors.messages #This needs to be fixed up. 
    end
  end
end