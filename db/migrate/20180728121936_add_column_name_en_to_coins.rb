class AddColumnNameEnToCoins < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :name_en, :text
  end
end
