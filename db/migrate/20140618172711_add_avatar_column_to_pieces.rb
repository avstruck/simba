class AddAvatarColumnToPieces < ActiveRecord::Migration
  def change
  	add_attachment :pieces, :avatar
  end
end
