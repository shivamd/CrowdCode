class CommentsController < ApplicationController

  def create
    comment = Comment.new(params[:comment])
    comment.user_id = current_user.id
    @tutorial = comment.get_tutorial
    comment.save ? redirect_to(@tutorial) : (redirect_to :back, notice: "#{comment.errors.full_messages.first}")
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
