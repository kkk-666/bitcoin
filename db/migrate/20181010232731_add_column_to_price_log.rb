class AddColumnToPriceLog < ActiveRecord::Migration[5.2]
  def change
    add_column :price_logs, :high, :float
  end
end
