class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  belongs_to :company, optional: true
  # accepts_nested_attributes_for :companies
  has_many :stories
  has_many :messages
end
