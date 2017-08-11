class Story < ApplicationRecord
  belongs_to :user
  belongs_to :company, optional: true
  has_many :topics, through: :story_topics
  has_many :story_topics
  has_many :messages
  mount_uploader :image, ImageUploader
  validates :title, presence: true
end
