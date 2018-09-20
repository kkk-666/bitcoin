class AddNotNullToCoinName < ActiveRecord::Migration[5.2]
  def change
  change_column :coins, :name, :text, null: false
  end
end
