class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.integer :owner_id
      t.integer :piece_id
    end
  end
end
