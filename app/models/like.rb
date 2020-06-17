class Like < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :user_id, uniqueness: { scope: :post_id } 

    def self.feed_order
        self.order(created_at: :desc)
    end
end
