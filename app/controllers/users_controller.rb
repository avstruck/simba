class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def edit
  end

  def update
  end

  def show
    @user = User.find(params[:id])
    @pieces = @user.owned_pieces.uniq
    @prints = @user.unique_prints
      
  end

end
