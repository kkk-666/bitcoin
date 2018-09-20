class AddColumnImageUrlToCoins < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :image_url, :text
  end
end
