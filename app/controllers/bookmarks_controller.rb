class BookmarksController < ApplicationController
	respond_to :js
	def create
		Bookmark.create(user_id: current_user.id, tutorial_id: params[:id])
		@tutorial = Tutorial.find(params[:id])
	end

	def destroy
		bookmark = Bookmark.find_by_user_id_and_tutorial_id(current_user.id, params[:id])
		bookmark.destroy
		@tutorial = Tutorial.find(params[:id])
	end
end
