class AddUniqueAndNotNullToCoinsSymbol < ActiveRecord::Migration[5.2]
  def change
    add_index :coins, :symbol, unique: true
    change_column :coins, :symbol, :text, null: false
  end
end
