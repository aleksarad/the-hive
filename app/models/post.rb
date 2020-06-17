class Post < ApplicationRecord
    belongs_to :user 
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes
    validates :content, length: { in: 1..300 }

    def self.feed_order
        self.order(created_at: :desc)
    end

    def self.like_order
        self.all.sort_by { |post|
            post.likes.count
        }.reverse.first(5)
    end
        
    #     likes_ordered = like_count_ordered(likes_grouped)
    #     top_five = likes_ordered.first(5)
    # end

    # def like_count_ordered(likes)
    #     likes.order(:desc)
    # end



end
