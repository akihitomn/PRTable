class Story < ApplicationRecord
  belongs_to :company
  has_many :topics, through: :story_topics
  has_many :story_topics
  has_many :messages
  mount_uploader :image, ImageUploader
end
