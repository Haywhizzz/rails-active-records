class Comment < ApplicationRecord
  belongs_to :post
  has_one :user, through: :post

  validates :title, presence: true, length: { minimum: 5, maximum: 30 }
  validates :body, presence: true, length: { minimum: 5, maximum: 150 }
end
