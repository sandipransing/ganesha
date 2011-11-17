class UsersController < ApplicationController
  
  def index
    @users = User.pagination(params)
  end
  
  def edit
  end

  def update
  end

  def destroy
  end
end
