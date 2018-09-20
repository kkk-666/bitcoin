class PriceToCoin < ActiveRecord::Migration[5.2]
  def change
    change_column :coins, :price, :float, null: false
  end
end
