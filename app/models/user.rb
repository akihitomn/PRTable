class User < ApplicationRecord
  belongs_to :company
  has_many :stories
  has_many :messages
end
