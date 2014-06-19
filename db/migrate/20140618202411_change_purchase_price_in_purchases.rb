class ChangePurchasePriceInPurchases < ActiveRecord::Migration
  def change
  	change_column :purchases, :purchase_price, :integer
  end
end
