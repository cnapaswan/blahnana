class DropCostsTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :costs
  end
end
