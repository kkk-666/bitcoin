class AddUniqueToName < ActiveRecord::Migration[5.2]
  # https://qiita.com/zaru/items/cde2c46b6126867a1a64
  def change
    add_index :coins, :name, unique: true
  end
end
