class AddArtistNameToPieces < ActiveRecord::Migration
  def change
  	add_column :pieces, :artist_name, :string
  end
end
