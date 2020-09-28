class User < ApplicationRecord
    validates :username, presence: true, length: { minimum: 5, maximum: 15}, uniqueness: true
    has_many :posts
    has_many :comments
end
