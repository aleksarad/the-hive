require 'bcrypt'

class User < ApplicationRecord
    has_secure_password

    has_many :posts
    has_many :likes

    def liked?(post)
        self.likes.find_by(post_id: post.id)
    end
end
