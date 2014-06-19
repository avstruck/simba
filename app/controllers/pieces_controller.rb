class PiecesController < ApplicationController
  # before_filter :authenticate_user!

  def new
    @new_piece = Piece.new
    # redirectif !user_signed_in?
  end

  def create
    @new_piece = Piece.create( piece_params )
    @new_piece.update_attributes(artist_id: current_user.id, art_owner_id: current_user.id, artist_name: current_user.username)

    redirect_to "/pieces/#{@new_piece.id}"

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
    @user = current_user
  end

  private

  def piece_params
    params.require(:piece).permit(:avatar, :title, :genre, :image_url, :artist_id, :original_value, 
      :art_owner_id, :copyright_owner_id, :number_prints, :art_description, :ownership_type, :created_at,
      :updated_at, :print_value, :artist_name)
  end



end 
