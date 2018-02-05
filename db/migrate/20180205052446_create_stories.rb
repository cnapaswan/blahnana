class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :banana
      t.text :image_url

      t.timestamps
    end
  end
end
