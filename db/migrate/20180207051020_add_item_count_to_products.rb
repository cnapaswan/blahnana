class AddItemCountToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :item_count, :integer
  end
end
