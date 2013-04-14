class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @tutorials = @category.tutorials + @category.tutorial_links
  end

  def index
    @categories = Category.all
  end

end