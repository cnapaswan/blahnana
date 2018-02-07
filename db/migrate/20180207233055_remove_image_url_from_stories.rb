class RemoveImageUrlFromStories < ActiveRecord::Migration[5.1]
  def change
    remove_column :stories, :image_url, :text
  end
end
