class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.text :name
      t.text :symbol
      t.float :price

      t.timestamps
    end
  end
end
