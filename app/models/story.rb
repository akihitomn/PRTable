class Story < ApplicationRecord
  belongs_to :user
  belongs_to :company, optional: true
  has_many :topics, through: :story_topics
  has_many :story_topics
  has_many :messages, dependent: :destroy
  has_many :likes, dependent: :destroy
  # def self.search(search)
  #   if search
  #     Story.where('body LIKE(?)', "%#{params[:body]}%")
  #   else
  #     Story.all
  #   end
  # end
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
  validates :user_id, presence: true
  validates :company_id, presence: true
end
