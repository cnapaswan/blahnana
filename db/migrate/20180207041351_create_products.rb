class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_item
      t.decimal :price, precision: 15, scale: 2

      t.timestamps
    end
  end
end
