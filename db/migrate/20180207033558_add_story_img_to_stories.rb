class AddStoryImgToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :story_img, :string
  end
end
