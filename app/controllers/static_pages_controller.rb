class StaticPagesController < ApplicationController

  def index
    @tutorials = Tutorial.all + TutorialLink.all
  end

  def about
  end

  def contact
  end
  
end
