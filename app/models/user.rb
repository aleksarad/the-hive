require 'bcrypt'

class User < ApplicationRecord
    has_secure_password
    validates :user_name, uniqueness: { case_sensitive: true }
    validates :user_name, presence: true
    validates :name, presence: true
    validates :location, presence: true
    validates :bio, presence: true

    has_many :posts, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users
    

    def liked?(post)
        self.likes.find_by(post_id: post.id)
    end

    # def follows?(user_id)
    #     f = self.followers.find {|follower| follower.followee_id == user_id}
    #     if f == nil
    #         true
    #     else
    #         false
    #     end
    # end

end
