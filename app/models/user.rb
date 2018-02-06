class User < ApplicationRecord
  has_secure_password
  has_many :story_entries
  has_many :source_user, :class_name => "BananaTransaction", :foreign_key => "source_user_id"
  has_many :target_user, :class_name => "BananaTransaction", :foreign_key => "target_user_id"
end
