class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :stories
  has_many :tags
  has_many :users
end
