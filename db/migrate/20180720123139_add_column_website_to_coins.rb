class AddColumnWebsiteToCoins < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :website, :text
  end
end
