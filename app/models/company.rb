class Company < ApplicationRecord
  has_many :stories
  has_many :topics
  has_many :users
end
