class Message < ApplicationRecord
  # after_create_commit { MessageBroadcastJob.perform_later self }
  validates :body_or_image, presence: true
  belongs_to :story
  belongs_to :user
  validates :story_id, presence: true
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader

  private
  def body_or_image
    body.presence or image.presence
  end
end
