class Comment < ApplicationRecord
    belongs_to :post
    has_one :user , through: :post
end
