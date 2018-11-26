class AddCloumnToPriceLog < ActiveRecord::Migration[5.2]
  def change
    add_column :price_logs, :low, :float
  end
end
