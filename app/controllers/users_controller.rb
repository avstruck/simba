class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def edit
  end

  def update
  end

  def show
    @user = User.find(params[:id])
    @gallery_value = current_user.gallery_value 
  end
end
