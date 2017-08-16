class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :stories
  has_many :topics
  has_many :users
end
