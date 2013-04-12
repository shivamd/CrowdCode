class CommentsController < ApplicationController
  def new
    
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    @tutorial = @comment.get_tutorial
    @comment.save ? redirect_to(@tutorial) : (redirect_to :back, notice: "failed to created comment")
  end
end
