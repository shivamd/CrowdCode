class CommentsController < ApplicationController
  
  def create
    if params[:comment].nil?
      @comment = Comment.new(user_id: current_user.id, commentable_type: "Comment",
                   commentable_id: params[:comment_id], content: params[:content])
    else
      @comment = Comment.new(params[:comment])
      @comment.user_id = current_user.id
    end
    @comment.save
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update 
    comment = Comment.find(params[:id])
    comment.update_attributes(params[:comment])
    @tutorial = comment.get_tutorial 
    comment.save ? redirect_to(@tutorial) : (render :edit, notice: "#{comment.errors.full_messages.first}")
  end

  def destroy
    comment = Comment.find(params[:id]).destroy
    redirect_to :back, notice: "Deleted comment"
  end
end
