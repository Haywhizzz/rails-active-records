class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 15 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_many :posts
  has_many :comments, through: :posts
end
