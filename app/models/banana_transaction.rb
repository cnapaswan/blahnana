class BananaTransaction < ApplicationRecord
  belongs_to :story_entry
  belongs_to :source_user, class_name: "User", :foreign_key => "source_user_id"
  belongs_to :target_user, class_name: "User", :foreign_key => "target_user_id"
end
