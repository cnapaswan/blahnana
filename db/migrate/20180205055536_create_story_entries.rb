class CreateStoryEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :story_entries do |t|
      t.references :story, foreign_key: true
      t.references :user, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
