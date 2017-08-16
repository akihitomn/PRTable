class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  belongs_to :company, optional: true
  has_many :stories, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :messages
end
