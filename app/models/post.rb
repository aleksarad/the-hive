class Post < ApplicationRecord
    belongs_to :user 
    has_many :likes
    has_many :users, through: :likes
    validates :content, length: { in: 1..300 }

    def self.feed_order
        self.order(created_at: :desc)
    end
end
