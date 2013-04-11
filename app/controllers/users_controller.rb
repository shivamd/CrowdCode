class UsersController < ApplicationController

  def show
    p current_user
    puts '*' *30

  end

end
