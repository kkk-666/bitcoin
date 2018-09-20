class AddColumnCoinIdToPriceLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :price_logs, :coin_id, :integer
  end
end
