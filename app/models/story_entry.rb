class StoryEntry < ApplicationRecord
  belongs_to :story
  belongs_to :user
  has_many :banana_transactions
end
