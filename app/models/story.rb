class Story < ApplicationRecord
  mount_uploader :story_img, StoryImgUploader
  has_many :story_entries
end
