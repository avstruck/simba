class ChangePricesInPieces < ActiveRecord::Migration
  def change
  	change_column :pieces, :original_value, :integer
  	change_column :pieces, :print_value, :integer
  end
end
