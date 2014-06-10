class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.datetime :purchase_date
      t.string :purchase_type
      t.integer :quantity
      t.float :purchase_price
      t.integer :initiator_id
      t.integer :acceptor_id

      t.timestamps
    end
  end
end
