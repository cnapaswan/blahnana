class BananaTransaction < ApplicationRecord
  belongs_to :story_entry
  belongs_to :source_user, class_name: "User"
  belongs_to :target_user, class_name: "User"
end
