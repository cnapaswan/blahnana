class CreateBananaTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :banana_transactions do |t|
      t.integer :source_user_id
      t.integer :target_user_id
      t.integer :story_entry_id

      t.timestamps
    end
  end
end
