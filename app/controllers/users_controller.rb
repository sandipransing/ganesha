class UsersController < ApplicationController
  
  def index
    @users = User.pagination(params)
  end
  
  def edit
  end

  def update
  end

  def show
    @user = User.find_by_id(params[:id])
    @user || access_denied
    render :layout => 'fluid'
  end

  def destroy
  end

  private

  def access_denied
    flash[:notice] = 'Invalid URL !!!'
    redirect_to root_url and return
  end
end
