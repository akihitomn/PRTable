class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  belongs_to :company, optional: true
  has_many :stories
  has_many :messages
end
