class Topic < ApplicationRecord
  has_many :stories, through: :story_topics
  has_many :companies
  has_many :story_topics
end
