class AddColumnToCoinsDesc < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :desc, :text
  end
end
