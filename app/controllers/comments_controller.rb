class CommentsController < ApplicationController
  def new
    
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.username = current_user.username 
    @comment.user_id = current_user.id
    if @comment.save
      if @comment.commentable_type == "Tutorial"
        @tutorial = Tutorial.find(@comment.commentable_id)
      else
        @tutorial = TutorialLink.find(@comment.commentable_id)
      end
      redirect_to @tutorial
    else
      redirect_to :back, notice: @comment.errors.messages #This needs to be fixed up. 
    end
  end
end