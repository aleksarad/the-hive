class Post < ApplicationRecord
    belongs_to :user 
    has_many :likes
    has_many :users, through: :likes
    validates :content, length: { in: 1..300 }

    def self.feed_order
        self.order(created_at: :desc)
    end


    # adding access to likes for each post instance
    # @@total_likes = 0

    # def self.add_like
    #     self.total_likes += 1
    # end

    # def self.remove_like
    #     self.total_likes -= 1
    # end
end
