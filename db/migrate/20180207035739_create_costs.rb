class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.decimal :product_01, precision: 15, scale: 2
      t.decimal :product_02, precision: 15, scale: 2
      t.decimal :product_03, precision: 15, scale: 2

      t.timestamps
    end
  end
end
