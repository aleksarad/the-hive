class Like < ApplicationRecord
    belongs_to :user
    belongs_to :post

    def like(post)
        post.likes 
    end

end
