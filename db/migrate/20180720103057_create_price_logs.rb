class CreatePriceLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :price_logs do |t|
      t.float :price

      t.timestamps
    end
  end
end
