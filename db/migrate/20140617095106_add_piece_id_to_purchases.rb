class AddPieceIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :piece_id, :integer
  end
end
