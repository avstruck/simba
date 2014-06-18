class AddPrintValueToPieces < ActiveRecord::Migration
  def change
    add_column :pieces, :print_value, :float
  end
end
