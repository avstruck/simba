class PiecesController < ApplicationController
  # before_filter :authenticate_user!

  def new
    @new_piece = Piece.new
    # redirectif !user_signed_in?
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @pieces = Piece.all
    @pieces = Piece.search(params[:q])
    # @pieces = Piece.new
  end
  def show
    @piece = Piece.find(params[:id])
  end
end 
